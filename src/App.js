import {style} from './App.css';
import React from 'react';
import axios from 'axios';
import { w3cwebsocket as W3CWebSocket } from "websocket";

var switchToHuman = 0;
var client = 0;
var clientOn = false; 
var clientOpen = false;

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      messages: [{
        user: 'ITSupportBot:',
        text: 'Hello, how can I help you today?'
      }]
    };

  }

  
  updateMessages = (obj) => {
    const cState = this.state.messages
    const updatedState = cState.concat(obj);
    const toSrv = obj;
    const toSrvText = obj.text;
    this.setState({
      messages : updatedState
    })
    
      if(switchToHuman === 0){
        axios.post("http://localhost:4000/", toSrv).then(res => {
        var msgSrv = res.data.output.generic[0].text
        console.log(msgSrv);
        if(msgSrv === 'I will connect you to a human right away!'){
          switchToHuman = 1;
          console.log("Switch to human");
        }
        const cState2 = this.state.messages
        const botObj = {
          user: 'IT Support Bot:',
          text: msgSrv
        }
      
        const updatedState2 = cState2.concat(botObj);
        this.setState({
          messages: updatedState2
        })

        }).catch(e => {
          console.error(e);
        })
      }
      else{
        if(clientOn === false){
          client = new W3CWebSocket('ws://127.0.0.1:9000');
          console.log("Client socket created")
          clientOn = true
        }
        client.onopen = () =>{
          clientOpen = true;
        }
        
        if(clientOpen === true){
          client.send(toSrvText);
        }

        client.onmessage = (message) =>{
          console.log(message);
          console.log(message.data);
          const dataSrv = message.data;
          const cState3 = this.state.messages
          const staffObj = {
          user: 'IT Support Staff',
          text: dataSrv
        }
      
        const updatedState3 = cState3.concat(staffObj);
        this.setState({
          messages: updatedState3
        })

        }


      }
  }


  
  render(){
    return(
      <div>
        <div style={{display: "block", margin: "auto"}}>
        <MessageArea messages={this.state.messages}/>
        <UserInput updateMessages = {this.updateMessages}/>
        </div>
      </div>
      );
  }
}

class MessageArea extends React.Component {
  render() {
    return(
        <div className="container" style = {{border: '1px solid black', display:"block", height: '500px' , width: '70%', margin:"auto"}}>
          {this.props.messages.map(item => (
            <div style= {{margin: "10px"}}>
              <div className="userNameDisp" key={item}>{item.user}</div>
              <div className="userTextDisp" key={item}>{item.text}</div>
            </div>
            ))}
        </div>
      );
  }
}

class UserInput extends React.Component {
  constructor(){
    super();
    this.state ={
      user : 'User:',
      text : ''
    };
  }

  handleSubmit() {
    this.props.updateMessages(this.state)
    this.setState({
      text: ''
    })
    Array.from(document.querySelectorAll("input#userInput")).forEach(
      input => (input.value = "")
    );
  }
  
  handleEnter(e){
    e.preventDefault();
    console.log("Enter click");
  }

  
  render(){
    return(
      <div>
        <form onSubmit={this.handleEnter}>
          <div className="secondContainer" style={{position: "absolute", width:"20%", left:"15%"}}>
          <label>
            <input type="text" id="userInput" placeholder="Aa" onChange={e => this.setState({text: e.target.value})}/>
          </label>
            <button type="submit" onClick={() => this.handleSubmit()}>Submit</button>
          </div>
        </form>
      </div>
    );
  }
}

export default App;

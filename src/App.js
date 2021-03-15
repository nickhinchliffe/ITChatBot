import './App.css';
import React from 'react';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      messages: []
    };

  }
  
  updateMessages = (obj) => {
    const cState = this.state.messages
    const updatedState = cState.concat(obj);
    this.setState({
      messages : updatedState
    })
  }
  
  

  componentDidMount(){
  }

  render() {
    return(
      <div>
        <MessageArea messages={this.state.messages}/>
        <UserInput updateMessages = {this.updateMessages}/>
        <div></div>
      </div>
      );
  }
}

class MessageArea extends React.Component {
  render() {
    return(
        <div>
          {this.props.messages.map(item => (
            <div style = {{border: '1px solid black'}}>
              <div class="userNameDisp" key={item}>{item.user}</div>
              <div class="userTextDisp"key={item}>{item.text}</div>
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

  
  render(){
    return(
      <div style={{ position: 'fixed', bottom: '0',margin: 10 }}>
        <label>
          <input type="text" id="userInput" placeholder="Aa" onChange={e => this.setState({text: e.target.value})}/>
        </label>
        <input type="submit" value="Submit" onClick={() => this.handleSubmit()}/>
      </div>
    );
  }
}

export default App;

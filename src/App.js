import './App.css';
import React from 'react';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      messages: []
    };

  }
  
  updateMessages = (message) => {
    const cState = this.state.messages
    const updatedState = cState.concat(message);
    this.setState({
      messages : updatedState
    })
  }
  
  render() {
    return(
      <div>
        <MessageArea messages={this.state.messages}/>
        <UserInput updateMessages = {this.updateMessages}/>
      </div>
      );
  }
}

class MessageArea extends React.Component {
  render() {
    return(
      <div>
        <ul>
          {this.props.messages.map(item => (
            <li key={item}>{item}</li>
          ))}
        </ul>
      </div>
      );
  }
}

class UserInput extends React.Component {
  constructor(){
    super();
    this.state ={
      message: ''
    };
  }

  handleSubmit() {
    this.props.updateMessages(this.state.message)
    this.setState({
      message: ''
    })
  }

  render(){
    return(
      <div>
        <label>
          <input type="text" id="userInput" onChange={e => this.setState({message: e.target.value})}/>
        </label>
        <input type="submit" value="Submit" onClick={() => this.handleSubmit()}/>
      </div>
    );
  }
}

export default App;

import React, { Component } from 'react';

import Header from './Header';
import Main from './Main';
import GratitudeList from './GratitudeList';

import 'bootstrap/dist/css/bootstrap.min.css';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App container">
        <Header />
        <Main />
        <GratitudeList />
      </div>
    );
  }
}

export default App;

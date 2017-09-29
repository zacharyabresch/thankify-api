import React, { Component } from 'react';
import { Link } from 'react-router-dom';
class Header extends Component {
  render() {
    return(
      <header className="App-header">
        <h1>Thankify.me</h1>
        <nav>
          <ul>
            <li><Link to='/'>Home</Link></li>
            <li><Link to='/new'>Thankify!</Link></li>
          </ul>
        </nav>
      </header>
    );
  }
}

export default Header;

import React from 'react'
import {
  BrowserRouter as Router,
  Route,
  Link
} from 'react-router-dom'

// import GratitudeList from './GratitudeList';
import Home from './Home';
import Thankifications from './Thankifications';
import logo from './logo.svg';
import './App.css';

const App = () => (
  <Router>
    <div>
      <ul>
        <li><Link to="/">Home</Link></li>
        <li><Link to="/thankifications">Thankifications</Link></li>
      </ul>

      <Route exact path="/" component={Home} />
      <Route path="/thankifications" component={Thankifications} />
    </div>
  </Router>
);

export default App;

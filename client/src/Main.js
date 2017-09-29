import React from 'react';
import { Switch, Route } from 'react-router-dom';
import App from './App';
import New from './New';

const Main = () => {
  <main>
    <Switch>
      <Route path='/' component={App} />
      <Route path='/new' component={New} />
    </Switch>
  </main>
}

export default Main;
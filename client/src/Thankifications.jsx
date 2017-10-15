import React, { Component } from 'react';

import ThankificationList from './ThankificationList';

class Thankifications extends Component {
  constructor(props) {
    super(props);
    this.state = { thankifications: [] };
  }

  componentDidMount() {
    window.fetch('thankifications')
      .then(response => response.json())
      .then(json => this.setState({ thankifications: json }))
      .catch(error => console.log(error));
  }

  render() {
    console.log(this.state);
    return(
      <div className="container">
        <h1>Thankifications</h1>
        <ThankificationList thankifications={this.state.thankifications} />
      </div>
    );
  }
}

export default Thankifications
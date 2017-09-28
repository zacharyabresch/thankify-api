import React, { Component } from 'react';

class GratitudeList extends Component {
	componentDidMount() {
		window.fetch('thankifications')
			.then(response => response.json())
			.then(json => console.log(json))
			.catch(error => console.log(error));
	}
	render() {
		return (
			<div>
				<h2>Works!</h2>
				<ul className="GratitudeList">
					
				</ul>
			</div>
		);
	}
}

export default GratitudeList;
import React, { Component } from 'react';

class GratitudeList extends Component {
	constructor(props) {
		super(props);
		this.state = { thankifications: [] };
		console.log('constructing');
	}

	componentWillMount() {
		window.fetch('thankifications')
			.then(response => response.json())
			.then(json => {
				this.setState({ thankifications: json });
			})
			.catch(error => console.log(error));
	}

	render() {
		return (
			<div>
				<h2>Works!</h2>
				<ul className="GratitudeList list-group">
					{this.state.thankifications.map(t => {
						return <li key={t.id} className="list-group-item">{t.gratitudes.length}</li>
					})}
				</ul>
			</div>
		);
	}
}

export default GratitudeList;

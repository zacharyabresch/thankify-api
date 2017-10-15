import React, { Component } from 'react';

const ThankificationList = ({ thankifications }) => {
  console.log(thankifications);
  const thankificationItems = thankifications.map(thankification => <li className="list-group-item" key={thankification.id}>{thankification.created_at}</li>);

  return(
    <ul className="list-group">{thankificationItems}</ul>
  )
};

export default ThankificationList;
import React, { Component } from 'react';
import { ListGroup, ListGroupItem } from 'reactstrap';

import ThankificationListItem from './ThankificationListItem';

const ThankificationList = ({ thankifications }) => {
  console.log(thankifications);
  const thankificationItems = thankifications.map(thankification => {
    return(
      <ListGroupItem key={thankification.id}>
        {thankification.created_at}
        <ThankificationListItem thankification={thankification} />
      </ListGroupItem>
    );
  });

  return(
    <ListGroup>{thankificationItems}</ListGroup>
  )
};

export default ThankificationList;
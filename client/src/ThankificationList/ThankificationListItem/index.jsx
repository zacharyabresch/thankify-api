import React, { Component } from 'react';
import { ListGroup, ListGroupItem } from 'reactstrap';

const ThankificationListItem = ({ thankification }) => {
  const gratitudes = thankification.gratitudes
    .map(gratitude => <ListGroupItem key={gratitude.id}>{gratitude.body}</ListGroupItem>);
  return <ListGroup>{gratitudes}</ListGroup>;
}

export default ThankificationListItem;
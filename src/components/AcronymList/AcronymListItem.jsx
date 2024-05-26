import React from 'react';
import './AcronymListItem.css';

const AcronymListItem = ({ abbreviation, fullText, description, onClick }) => {
  return (
    <div className="acronym-list-item" onClick={onClick}>
      <h3>{abbreviation}</h3>
      <p>{fullText}</p>
      <p>{description}</p>
    </div>
  );
};

export default AcronymListItem;

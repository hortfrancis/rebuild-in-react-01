import React from 'react';
import './AddAcronymButton.css';

const AddAcronymButton = ({ onAddAcronym }) => {
  return (
    <button className="add-acronym-button" onClick={onAddAcronym}>
      Add Acronym
    </button>
  );
};

export default AddAcronymButton;

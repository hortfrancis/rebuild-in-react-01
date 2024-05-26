import React from 'react';
import './PageHeader.css';

const PageHeader = ({ text }) => {
  return (
    <div className="page-header">
      <h2>{text}</h2>
    </div>
  );
};

export default PageHeader;

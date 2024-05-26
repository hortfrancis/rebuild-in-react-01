import React from 'react';
import './SiteHeader.css';

const SiteHeader = ({ title, logo }) => {
  return (
    <header className="site-header">
      <div className="logo">{logo}</div>
      <h1>{title}</h1>
    </header>
  );
};

export default SiteHeader;

#!/bin/bash

# Populate SiteHeader component
cat <<EOL > src/components/SiteHeader/SiteHeader.jsx
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
EOL

# Populate NavigationMenu component
cat <<EOL > src/components/NavigationMenu/NavigationMenu.jsx
import React from 'react';
import './NavigationMenu.css';

const NavigationMenu = () => {
  return (
    <nav className="navigation-menu">
      <button className="menu-icon">☰</button>
    </nav>
  );
};

export default NavigationMenu;
EOL

# Populate PageHeader component
cat <<EOL > src/components/PageHeader/PageHeader.jsx
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
EOL

# Populate SearchBar component
cat <<EOL > src/components/SearchBar/SearchBar.jsx
import React from 'react';
import './SearchBar.css';

const SearchBar = ({ onSearch }) => {
  return (
    <input
      type="text"
      className="search-bar"
      placeholder="Search"
      onChange={(e) => onSearch(e.target.value)}
    />
  );
};

export default SearchBar;
EOL

# Populate AddAcronymButton component
cat <<EOL > src/components/AddAcronymButton/AddAcronymButton.jsx
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
EOL

# Populate AcronymList component
cat <<EOL > src/components/AcronymList/AcronymList.jsx
import React from 'react';
import AcronymListItem from './AcronymListItem';
import './AcronymList.css';

const AcronymList = ({ acronyms, onSelectAcronym }) => {
  return (
    <div className="acronym-list">
      {acronyms.map((acronym) => (
        <AcronymListItem
          key={acronym.abbreviation}
          abbreviation={acronym.abbreviation}
          fullText={acronym.fullText}
          description={acronym.description}
          onClick={() => onSelectAcronym(acronym)}
        />
      ))}
    </div>
  );
};

export default AcronymList;
EOL

# Populate AcronymListItem component
cat <<EOL > src/components/AcronymList/AcronymListItem.jsx
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
EOL

# Populate Pagination component
cat <<EOL > src/components/Pagination/Pagination.jsx
import React from 'react';
import './Pagination.css';

const Pagination = ({ currentPage, totalPages, onPageChange }) => {
  const pages = [];
  for (let i = 1; i <= totalPages; i++) {
    pages.push(i);
  }

  return (
    <div className="pagination">
      {pages.map((page) => (
        <button
          key={page}
          className={page === currentPage ? 'active' : ''}
          onClick={() => onPageChange(page)}
        >
          {page}
        </button>
      ))}
    </div>
  );
};

export default Pagination;
EOL

# Populate global CSS file
cat <<EOL > src/styles/index.css
/* General CSS for the application */

body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

header, nav, .page-header, .acronym-list, .pagination {
  padding: 1rem;
}

.search-bar {
  margin: 1rem 0;
}

.add-acronym-button {
  margin: 1rem 0;
}
EOL

# Output message to indicate completion
echo "Files have been populated with React code."

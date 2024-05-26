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

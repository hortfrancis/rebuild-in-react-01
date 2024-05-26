import React, { useState } from 'react';
import SiteHeader from './components/SiteHeader/SiteHeader';
import NavigationMenu from './components/NavigationMenu/NavigationMenu';
import PageHeader from './components/PageHeader/PageHeader';
import SearchBar from './components/SearchBar/SearchBar';
import AddAcronymButton from './components/AddAcronymButton/AddAcronymButton';
import AcronymList from './components/AcronymList/AcronymList';
import Pagination from './components/Pagination/Pagination';
import './styles/index.css';

const initialAcronyms = [
  {
    abbreviation: 'UCL',
    fullText: 'University College London',
    description: "UCL is the UK's largest university after the Open University, and its main campus is in Bloomsbury, near Kings Cross"
  }
  // Add more initial acronyms here if needed
];

const App = () => {
  const [acronyms, setAcronyms] = useState(initialAcronyms);
  const [searchTerm, setSearchTerm] = useState('');
  const [currentPage, setCurrentPage] = useState(1);
  const itemsPerPage = 10;

  const handleSearch = (term) => {
    setSearchTerm(term);
  };

  const handleAddAcronym = () => {
    const newAcronym = {
      abbreviation: 'NEW',
      fullText: 'New Example',
      description: 'This is a newly added example acronym.'
    };
    setAcronyms([...acronyms, newAcronym]);
  };

  const handleSelectAcronym = (acronym) => {
    alert(`Selected Acronym: ${acronym.abbreviation}`);
  };

  const handlePageChange = (page) => {
    setCurrentPage(page);
  };

  const filteredAcronyms = acronyms.filter((acronym) =>
    acronym.abbreviation.toLowerCase().includes(searchTerm.toLowerCase()) ||
    acronym.fullText.toLowerCase().includes(searchTerm.toLowerCase()) ||
    acronym.description.toLowerCase().includes(searchTerm.toLowerCase())
  );

  const totalPages = Math.ceil(filteredAcronyms.length / itemsPerPage);
  const displayedAcronyms = filteredAcronyms.slice((currentPage - 1) * itemsPerPage, currentPage * itemsPerPage);

  return (
    <div className="app">
      <SiteHeader title="QuickCRUDApp" logo="QC" />
      <NavigationMenu />
      <main>
        <PageHeader text="Acronym List" />
        <SearchBar onSearch={handleSearch} />
        <AddAcronymButton onAddAcronym={handleAddAcronym} />
        <AcronymList acronyms={displayedAcronyms} onSelectAcronym={handleSelectAcronym} />
        <Pagination
          currentPage={currentPage}
          totalPages={totalPages}
          onPageChange={handlePageChange}
        />
      </main>
    </div>
  );
};

export default App;

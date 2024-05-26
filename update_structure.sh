#!/bin/bash

# Create components folders and files
mkdir -p src/components/SiteHeader
touch src/components/SiteHeader/SiteHeader.jsx src/components/SiteHeader/SiteHeader.css

mkdir -p src/components/NavigationMenu
touch src/components/NavigationMenu/NavigationMenu.jsx src/components/NavigationMenu/NavigationMenu.css

mkdir -p src/components/PageHeader
touch src/components/PageHeader/PageHeader.jsx src/components/PageHeader/PageHeader.css

mkdir -p src/components/SearchBar
touch src/components/SearchBar/SearchBar.jsx src/components/SearchBar/SearchBar.css

mkdir -p src/components/AddAcronymButton
touch src/components/AddAcronymButton/AddAcronymButton.jsx src/components/AddAcronymButton/AddAcronymButton.css

mkdir -p src/components/AcronymList
touch src/components/AcronymList/AcronymList.jsx src/components/AcronymList/AcronymList.css
touch src/components/AcronymList/AcronymListItem.jsx src/components/AcronymList/AcronymListItem.css

mkdir -p src/components/Pagination
touch src/components/Pagination/Pagination.jsx src/components/Pagination/Pagination.css

# Create styles folder and global CSS file if needed
mkdir -p src/styles
touch src/styles/index.css

# Output message to indicate completion
echo "Project file structure has been updated with the necessary folders and files."

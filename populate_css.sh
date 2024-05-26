#!/bin/bash

# Populate SiteHeader CSS
cat <<EOL > src/components/SiteHeader/SiteHeader.css
.site-header {
  display: flex;
  align-items: center;
  background-color: #f8f9fa;
  padding: 1rem;
}

.logo {
  font-size: 1.5rem;
  font-weight: bold;
  margin-right: 1rem;
}

h1 {
  margin: 0;
}
EOL

# Populate NavigationMenu CSS
cat <<EOL > src/components/NavigationMenu/NavigationMenu.css
.navigation-menu {
  display: flex;
  align-items: center;
}

.menu-icon {
  font-size: 1.5rem;
  cursor: pointer;
}
EOL

# Populate PageHeader CSS
cat <<EOL > src/components/PageHeader/PageHeader.css
.page-header {
  margin: 1rem 0;
}

.page-header h2 {
  font-size: 2rem;
  font-weight: bold;
}
EOL

# Populate SearchBar CSS
cat <<EOL > src/components/SearchBar/SearchBar.css
.search-bar {
  padding: 0.5rem;
  margin: 1rem 0;
  border: 1px solid #ccc;
  border-radius: 4px;
}
EOL

# Populate AddAcronymButton CSS
cat <<EOL > src/components/AddAcronymButton/AddAcronymButton.css
.add-acronym-button {
  background-color: #8a2be2;
  color: white;
  padding: 0.5rem 1rem;
  margin: 1rem 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
EOL

# Populate AcronymList CSS
cat <<EOL > src/components/AcronymList/AcronymList.css
.acronym-list {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.acronym-list-item {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 1rem;
  background-color: #fff;
}

.acronym-list-item h3 {
  margin: 0;
  font-size: 1.2rem;
  color: #8a2be2;
}

.acronym-list-item p {
  margin: 0.5rem 0;
}
EOL

# Populate AcronymListItem CSS
cat <<EOL > src/components/AcronymList/AcronymListItem.css
/* No additional styles needed for AcronymListItem as styles are defined in AcronymList */
EOL

# Populate Pagination CSS
cat <<EOL > src/components/Pagination/Pagination.css
.pagination {
  display: flex;
  justify-content: center;
  margin: 1rem 0;
}

.pagination button {
  margin: 0 0.25rem;
  padding: 0.5rem 1rem;
  border: 1px solid #ddd;
  border-radius: 4px;
  background-color: #fff;
  cursor: pointer;
}

.pagination button.active {
  background-color: #8a2be2;
  color: white;
}
EOL

# Output message to indicate completion
echo "CSS files have been populated with styles."

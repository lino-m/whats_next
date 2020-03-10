const hiddenSearch = () => {
  const searchQuery = document.getElementById("search_query");
  const hiddenSearchbox = document.getElementById("hidden-search");
  searchQuery.addEventListener('focus', () => {
    hiddenSearchbox.style.display = "block";
  });
  searchQuery.addEventListener('blur', () => {
    hiddenSearchbox.style.display = "none";
  });
}

export { hiddenSearch };

// add common class to buttons
// listen to  click on common class
 // trigger form submission
//

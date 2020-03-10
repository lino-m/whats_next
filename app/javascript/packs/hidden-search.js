const hiddenSearch = () => {
  const searchQuery = document.getElementById("search_query");
  const closeX = document.getElementById("close");
  const hiddenSearchbox = document.getElementById("hidden-search");
  searchQuery.addEventListener('focus', () => {
    hiddenSearchbox.style.display = "block";
  });
  closeX.addEventListener('click', () => {
    hiddenSearchbox.style.display = "none";
  });
}

export { hiddenSearch };

// add common class to buttons
// listen to  click on common class
 // trigger form submission
//

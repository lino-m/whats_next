const hiddenSearch = () => {
  console.log('kdjflksaj')
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

const dropdownGoal = () => {
  const dropdownOpen = document.getElementsByClassName('milestone_dropdown');

  for (let element of dropdownOpen) {
    element.addEventListener('click', (event ) => {
      const targetId = event.currentTarget.dataset.cardId;
      const targetCard = document.getElementById(`card-${targetId}`)
      if (targetCard.style.height == '0px') {
        targetCard.style.height = 'auto';
      } else {
        targetCard.style.height = '0px';
      }
    });
  }
};

export { dropdownGoal };

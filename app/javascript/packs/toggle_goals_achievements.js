const toggleDashboardView = () => {
  const goalsButton = document.getElementById("goals_button");
  const achievementsButton = document.getElementById("achievements_button");
  const cards = document.querySelectorAll(".goal-card-to-toggle");

  const showGoals = () => {
    cards.forEach(card => {
      if (card.dataset.done === "true") {
        card.style.display = "none";
      } else {
        card.style.display = "block";
      }
    })
  }

  const showAchievements = () => {
    cards.forEach(card => {
      if (card.dataset.done  === "true") {
        card.style.display = "block";
      } else {
        card.style.display = "none";
      }
    })
  }

  const shouldRun = goalsButton && achievementsButton;

  if (shouldRun) {
    goalsButton.addEventListener('click', (event) => {
      event.preventDefault();
      goalsButton.dataset.goalsMode = "true";
      achievementsButton.style.backgroundColor = "#dd81a8"
      goalsButton.style.backgroundColor = "#CF4A82"
      showGoals();
    });

    achievementsButton.addEventListener('click', (event) => {
      event.preventDefault();
      goalsButton.dataset.goalsMode = "false";
      achievementsButton.style.backgroundColor = "#CF4A82"
      goalsButton.style.backgroundColor = "#dd81a8"
      showAchievements();
    });

    if (goalsButton.dataset.goalsMode === "true") {
      showGoals();
    } else {
      showAchievements();
    }
  }
}

export { toggleDashboardView };

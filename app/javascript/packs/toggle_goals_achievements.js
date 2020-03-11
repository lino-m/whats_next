const toggleDashboardView = () => {
  const goalsButton = document.getElementById("goals_button");
  const achievementsButton = document.getElementById("achievements_button");

  const dashboardGoals = document.getElementById("dashboard-goals");
  const dashboardAchievements = document.getElementById("dashboard-goals");

  goalsButton.addEventListener('click', () => {
    dashboardGoals.style.display = "block";
    dashboardAchievements.style.display = "none";
  });

  achievementsButton.addEventListener('click', () => {
    dashboardGoals.style.display = "none";
    dashboardAchievements.style.display = "block";
  });
}

export { toggleDashboardView };

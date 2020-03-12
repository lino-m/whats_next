const progressbar = () => {
  const progressbars = document.getElementsByClassName("progress-bar");
  for(let progressbar of progressbars) {
    const goalId = progressbar.dataset.goalId;
    const milestonesChecks = document.getElementsByClassName(`goal-card-${goalId}`)
    let progress = 0;


    for(let check of milestonesChecks) {
      if (check.checked) {
        progress ++;
      }
    }
    const updatedProgress = ((progress/milestonesChecks.length)* 100).toFixed(2) + '%';
    console.log(updatedProgress);
    const targetProgressbar = document.getElementById(`progbar-${goalId}`);
    targetProgressbar.style.width = updatedProgress;

    const achievedButton = document.getElementById(`achieved-button-${goalId}`);
    achievedButton.addEventListener('click', () => {
      targetProgressbar.style.width = 100 + '%';
      for(let check of milestonesChecks) {
      check.checked = true;
      }
    })
  }
}

export { progressbar };

//


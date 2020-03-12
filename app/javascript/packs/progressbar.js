const progressbar = () => {
  const progressbars = document.getElementsByClassName("progress-bar");
  for(let progressbar of progressbars) {
    const barId = progressbar.dataset.goalId;
    const milestonesChecks = document.getElementsByClassName(`goal-card-${barId}`)
    let progress = 0;

    const achievedButton = document.getElementById("achieved-button");
    achievedButton.addEventListener('click', () => {
      targetProgressbar.style.width = 100 + '%';
      for(let check of milestonesChecks) {
      check.checked = true;
      }
    })

    for(let check of milestonesChecks) {
      if (check.checked) {
        progress ++;
      }
    }
    const updatedProgress = ((progress/milestonesChecks.length)* 100).toFixed(2) + '%';
    console.log(updatedProgress);
    const targetProgressbar = document.getElementById(`progbar-${barId}`);
    targetProgressbar.style.width = updatedProgress;
  }
}

export { progressbar };

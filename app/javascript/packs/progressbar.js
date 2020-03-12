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
    // console.log("pro", progress)
    // console.log("miles", milestonesChecks.length)
    //  console.log( ((progress/milestonesChecks.length)* 100).toFixed(2) + '%' )

    const updatedProgress = ((progress/milestonesChecks.length)* 100).toFixed(2) + '%';

    const targetProgressbar = document.getElementById(`progbar-${goalId}`);
    targetProgressbar.style.width = updatedProgress;

    const achievedButton = document.getElementById(`achieved-button-${goalId}`);
    achievedButton.addEventListener('click', () => {
      for(let check of milestonesChecks) {
        if (!check.checked) {
          check.click();
        }
        targetProgressbar.style.width = 100 + '%';
        // const form = check.parentElement;
        // const submitButton = form.querySelector("input[type='submit");
        // submitButton.click();
      }
    })
  }
}

export { progressbar };

//


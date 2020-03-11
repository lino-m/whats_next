const progressbar = () => {
  const progressbars = document.getElementsByClassName("progress-bar");
  for(let progressbar of progressbars) {
    const barId = progressbar.dataset.goalId
    const milestonesChecks = document.getElementsByClassName(`goal-card-${barId}`)
    let progress = 0
    for(let check of milestonesChecks) {
      if (check.checked) {
        progress ++;
      }
    }
    console.log(progress);
  }
}

// <div class="btn btn-flat milestone_dropdown" data-card-id="<%= goal.id %>">
//     see Milestones

// after simpleforn<%= check_box_tag milestone.name, milestone.id, milestone.done , class: "goal-card-#{goal.id}"%>


// <div class="progress-management">
    // <div class="d-flex justify-content-between align-items-center">
    //   <div class="progress" style="height: 9px;">
// <div id="progbar-<%= goal.id %>" class="progress-bar" data-goal-id="<%= goal.id %>"  role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">


export { progressbar };

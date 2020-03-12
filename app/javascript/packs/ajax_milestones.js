import { progressbar } from './progressbar';

const checkboxMilestones = () => {
  const checkboxes = document.getElementsByClassName('milestone-checkbox');
  for (let checkbox of checkboxes) {
    checkbox.addEventListener ('click', (event) => {
     const targetId = event.currentTarget.dataset.milestoneId;
     const targetSubmit = document.getElementById(`milestone-submit-${targetId}`)
     targetSubmit.click()
     progressbar();
    });
  }
}

export { checkboxMilestones };

import { progressbar } from './progressbar';
import { toggleDashboardView } from './toggle_goals_achievements';

const checkboxMilestones = () => {
  const checkboxes = document.getElementsByClassName('milestone-checkbox');
  for (let checkbox of checkboxes) {
    checkbox.addEventListener ('click', (event) => {
     const targetId = event.currentTarget.dataset.milestoneId;
     const targetSubmit = document.getElementById(`milestone-submit-${targetId}`)
     targetSubmit.click()

     // CHECK IF MOVE CARD
     const goalId = event.currentTarget.dataset.goalId;
     const card = document.querySelector(`.goal-card-to-toggle[data-goal-id='${goalId}']`);
     const cardCheckboxes = card.querySelectorAll('input[type="checkbox"]');
     let isCompleted = true;
     cardCheckboxes.forEach(cardCheckbox => {
      if (!cardCheckbox.checked) {
        isCompleted = false;
      }
     });
     card.dataset.done = isCompleted;

     progressbar();
     toggleDashboardView();
    });
  }
}

export { checkboxMilestones };

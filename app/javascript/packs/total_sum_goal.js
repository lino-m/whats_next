const totalSumGoalManager = () => {
  const form = document.querySelector('#milestones');
  if (form) {
    const budget = document.querySelector("#target-budget");

    form.addEventListener('keyup', (event) => {
      const prices = document.querySelectorAll(".price");
      budget.innerHTML = '';
      let arr_prices = [];
      prices.forEach (price => {
        arr_prices.push(parseFloat(price.value));
      });
      const total = arr_prices.reduce((a, b) => a + b, 0);
      const html = `<p> of ${total.toFixed(2)} €</p>`;
      budget.insertAdjacentHTML("beforeend", html);
    });

    // progress with budget

    const progress = document.querySelector("#progress-budget");
    const date_added = document.querySelector("#date-added");

    if (date_added === null) {
      const html = `<p>0.00 €</p>`;
      progress.insertAdjacentHTML("beforeend", html);
    } else {
      const date_start = new Date(date_added)
      const date_now = new Date()
      const time_days = date_now - date_start
      const html = `<p> of 0.00 €</p>`;
      progress.insertAdjacentHTML("beforeend", html);
    }
  }
};

export { totalSumGoalManager };

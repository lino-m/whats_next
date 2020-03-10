import "bootstrap";
import "cocoon";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { hiddenSearch } from './hidden-search';
import { initMapbox } from '../plugins/init_mapbox';
import { searchCologne } from './search_buttons';
import { totalSumGoalManager } from './total_sum_goal';
// import { initAutocomplete } from '../plugins/init_mapbox';


hiddenSearch();

searchCologne();

initMapbox();

totalSumGoalManager();

// initAutocomplete(); #This musnt be commented in if it isnt finished.!!!!!


const milestone_costs = document.querySelector('.milestone-price');

milestone_costs.bootstrapValidator('enableFieldValidators',
  'price_cents', false, 'notEmpty');

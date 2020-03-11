import "bootstrap";
import "cocoon";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { hiddenSearch } from './hidden-search';
import { initMapbox } from '../plugins/init_mapbox';
// this needs to be out

import { dropdownGoal } from './dropdown_goal';

// import { initAutocomplete } from '../plugins/init_mapbox';


hiddenSearch();

initMapbox();

dropdownGoal();

// initAutocomplete(); #This musnt be commented in if it isnt finished.!!!!!


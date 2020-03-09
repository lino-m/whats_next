import "bootstrap";
import "cocoon";
import 'mapbox-gl/dist/mapbox-gl.css';

import {hiddenSearch} from './hidden-search';
hiddenSearch();
import {searchCologne} from './search_buttons';
searchCologne();

import { initMapbox } from '../plugins/init_mapbox';
initMapbox();


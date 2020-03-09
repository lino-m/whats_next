import "bootstrap";
import "cocoon";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { hiddenSearch } from './hidden-search';
import { searchCologne } from './search_buttons';

hiddenSearch();
searchCologne();

initMapbox();


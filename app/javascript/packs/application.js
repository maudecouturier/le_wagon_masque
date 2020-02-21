require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start()
require("channels")
require("flatpickr/dist/themes/material_red.css")

import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.css";

import { loadDynamicBannerText } from '../components/banner';
import { initFlatpicker } from  "../components/init_flatpickr";
import { initMapbox } from '../components/init_mapbox';
import { initAutocomplete } from '../components/init_autocomplete';
import starRating from '../components/star_rating';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  loadDynamicBannerText();
  initFlatpicker();
  initMapbox();
  initAutocomplete();
  starRating();
  $('.dropdown-toggle').dropdown();
});


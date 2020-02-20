require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start()
require("channels")
require("flatpickr/dist/themes/material_red.css")

import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.css";

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';
import { initFlatpicker } from  "../components/init_flatpickr";
import { initMapbox } from '../components/init_mapbox';
import { initAutocomplete } from '../components/init_autocomplete';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
  loadDynamicBannerText();
  initFlatpicker();
  initMapbox();
  initAutocomplete();
});


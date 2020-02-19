require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start()
require("channels")

import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.css";

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';
import { initFlatpicker } from  "../components/init_flatpickr";
import { initMapbox } from '../components/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
  loadDynamicBannerText();
  initFlatpicker();
  initMapbox();
});


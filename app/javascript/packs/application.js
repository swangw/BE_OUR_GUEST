import "bootstrap";
import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css';

// import { initSweetAlertForForm } from '../plugins/swal';

import { initMapbox } from '../plugins/mapbox';
import { initAutocomplete } from '../plugins/autocomplete';
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';


initMapbox();
initAutocomplete();

const startTimeInput = document.getElementById('booking_start_time');
const endTimeInput = document.getElementById('booking_end_time');

if (startTimeInput) {
  // const unavailableTimes = JSON.parse(document.querySelector().dataset.unavailable)
  endTimeInput.disabled = true

  flatpickr(startTimeInput, {
    enableTime: true,
    minDate: "today",


    // disabled: unavailableTimes,
    dateFormat: "Y-m-d H:i",
  });

  // console.log("I am in the file")

  startTimeInput.addEventListener("change", (e) => {
    if (startTimeInput != "") {
      endTimeInput.disabled = false
    }

    flatpickr(endTimeInput, {
      enableTime: true,
      minDate: "today",

      // disabled: unavailableTimes,
      dateFormat: "Y-m-d H:i"
    });
  })
};

import { initSweetalert } from '../plugins/sweetalert';

initSweetalert('#sweet-alert', {
  title: "Confirmation",
  text: "Confirm Booking",
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#confirm-link');
    link.click();
  }
});

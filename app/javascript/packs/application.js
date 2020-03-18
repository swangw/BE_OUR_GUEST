import "bootstrap";
import { initSweetAlertForForm } from '../plugins/swal';
import { initMapbox } from '../plugins/mapbox';
import 'mapbox-gl/dist/mapbox-gl.css';
import flatpickr from "flatpickr";
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initAutocomplete } from '../plugins/autocomplete';

// initSweetAlertForForm('#new_booking', {
//   title: "Confirm booking?",
//   text: "You will be charged ${total_price}",
//   icon: "info",
//   buttons: true,
//   dangerMode: true,
// }, (value) => {
//   if (value) {
//     const link = document.querySelector('#create-link')
//     link.click();
//   }
// });

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
    minTime: Date.now(),
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
      minDate: e.target.value,
      minTime: Date.now(),
      // disabled: unavailableTimes,
      dateFormat: "Y-m-d H:i"
    });
  })
};

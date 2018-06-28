import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!


const picker = document.querySelector(".datepicker");
// it selects with the selector
if (picker) {
  flatpickr(".datepicker", {
    defaultDate: Date.now(),
    enableTime: true,
  })
}

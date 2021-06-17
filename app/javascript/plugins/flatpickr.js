import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: 'Z',
    altInput: true,
    altFormat: 'Y-m-d h:i K'
  });
}

export { initFlatpickr };

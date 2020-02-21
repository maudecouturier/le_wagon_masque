
const priceCalculation = () => {
  const inputs = document.querySelectorAll(".datepicker");
  inputs.forEach((input) => {
    input.addEventListener('input', () => {
      const startDate = document.querySelector("#booking_start_date").value;
      const endDate = document.querySelector("#booking_end_date").value;
      const regex = /(\d{2})\/(\d{2})\/(\d{4})/;
      const newStartDate = startDate.match(regex)[2]+"/"+startDate.match(regex)[1]+"/"+startDate.match(regex)[3]
      const newEndDate = endDate.match(regex)[2]+"/"+endDate.match(regex)[1]+"/"+endDate.match(regex)[3]
      const daysNumber = (Date.parse(newEndDate) - Date.parse(newStartDate))/ 86400000;
      const costumePrice = document.querySelector('#costume-price').dataset.price
      const bookingPrice = daysNumber*costumePrice;
      if (bookingPrice < 0) {
        return document.querySelector('#booking-btn').value = `💀 Your dates don't match 💀`;;
      } else {
        return document.querySelector('#booking-btn').value = `Book me for ${bookingPrice} €`;;
      }

    });
  });
};

export {priceCalculation}

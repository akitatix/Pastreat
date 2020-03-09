recapitulatifElements = document.querySelectorAll('.reservation_principale')
// recapitulatifElement2 = document.querySelector('.recapitulatif')

const reservation = (event) =>{
  event.currentTarget.querySelector('.recapitulatif').classList.toggle('open');
}

recapitulatifElements.forEach((recapitulatifElement) => {
  recapitulatifElement.addEventListener('click', reservation)
})

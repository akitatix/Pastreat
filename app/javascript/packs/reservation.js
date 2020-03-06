recapitulatifElement = document.querySelector('.recapitulatif')


const reservation = (_event) =>{
  recapitulatifElement.classList.toggle('open');
}

if (recapitulatifElement) {
  recapitulatifElement.addEventListener('click', reservation)
}

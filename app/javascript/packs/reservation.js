recapitulatifElement = document.querySelector('.reservation_principale')
recapitulatifElement2 = document.querySelector('.recapitulatif')



const reservation = (_event) =>{
  recapitulatifElement2.classList.toggle('open');
}

if (recapitulatifElement) {
  recapitulatifElement.addEventListener('click', reservation)
}

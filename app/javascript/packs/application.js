require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("css/app.scss")

import "bootstrap";


import "../geolocation.js";
import "../components/navbar.js";


import "../reservation.js"



import StarRating from 'star-rating.js';

const stars = document.querySelector('#rating_star');
if (stars) {
  new StarRating('#rating_star');
}

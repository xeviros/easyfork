import GMaps from 'gmaps/gmaps.js';

const map2Element = document.getElementById('map2');
if (map2Element) { // don't try to build a map2 if there's no div#map2 to inject in
  const map2 = new GMaps({ el: '#map2', lat: 0, lng: 0 });
  const markers2 = JSON.parse(map2Element.dataset.markers2);
  map2.addMarkers(markers2);
  global.markers2 = map2.markers2;
  if (markers2.length === 0) {
    map2.setZoom(2);
  } else if (markers2.length === 1) {
    map2.setCenter(markers2[0].lat, markers2[0].lng);
    map2.setZoom(14);
  } else {
    map2.fitLatLngBounds(markers2);
  }
}

function highLightMarker2(event) {
    const marker2Id = event.currentTarget.dataset.restaurantId;
    // dont use global. Use proper scoping chain but now lazy its late bye
    const marker2 = global.markers2.find(marker2 => {
      return marker2.restaurantId === Number.parseInt(marker2Id);
    })
    if (event.type == "mouseover") {
      addBounce(marker2)
    }
    else {
      removeBounce(marker2)
    }
  }

  function addBounce(marker2) {
    marker2.setAnimation(google.maps.Animation.BOUNCE);
  }

  function removeBounce(marker2) {
    marker2.setAnimation(null);
  }


  const cards = document.querySelectorAll(".card-home");
  cards.forEach(card => {
    card.addEventListener("mouseover", highLightMarker2)
    card.addEventListener("mouseleave", highLightMarker2)
  })
autocomplete();

import { autocomplete } from '../components/autocomplete';


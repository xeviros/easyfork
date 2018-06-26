import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  global.markers = map.markers;
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

function highLightMarker(event) {
    const markerId = event.currentTarget.dataset.restaurantId;
    // dont use global. Use proper scoping chain but now lazy its late bye
    const marker = global.markers.find(marker => {
      return marker.restaurantId === Number.parseInt(markerId);
    })
    if (event.type == "mouseover") {
      addBounce(marker)
    }
    else {
      removeBounce(marker)
    }
  }

  function addBounce(marker) {
    marker.setAnimation(google.maps.Animation.BOUNCE);
  }

  function removeBounce(marker) {
    marker.setAnimation(null);
  }


  const cards = document.querySelectorAll(".card-home");
  cards.forEach(card => {
    card.addEventListener("mouseover", highLightMarker)
    card.addEventListener("mouseleave", highLightMarker)
  })
autocomplete();

import { autocomplete } from '../components/autocomplete';


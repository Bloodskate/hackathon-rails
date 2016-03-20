
function initMap() {
  var myLatLng1 = {lat: 27.7025791, lng: 85.3201084};
  var myLatLng2 = {lat: 27.6937741, lng: 85.3153342};
  
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 0, lng: 0},
    zoom: 13,
    styles: [{
      featureType: 'poi',
      stylers: [{ visibility: 'off' }]  // Turn off points of interest.
    }, {
      featureType: 'transit.station',
      stylers: [{ visibility: 'off' }]  // Turn off bus stations, train stations, etc.
    }],
    disableDoubleClickZoom: true
  });

  var infoWindow = new google.maps.InfoWindow({map: map});

  var marker = new google.maps.Marker({
    position: myLatLng1,
    map: map,
    title: 'Kathmandu Model Hospital'
  });

  var marker = new google.maps.Marker({
    position: myLatLng2,
    map: map,
    title: 'Blue Cross Hospital'
  });

if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };

      infoWindow.setPosition(pos);
      infoWindow.setContent('You are here');
      map.setCenter(pos);
    }, function() {
      handleLocationError(true, infoWindow, map.getCenter());
    });
  } else {
    // Browser doesn't support Geolocation
    handleLocationError(false, infoWindow, map.getCenter());
  }



}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');
}

      


 
   



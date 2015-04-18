$(document).ready(function(){
  $("#location_input").geocomplete({ 
    details: "#location_section",
    detailsAttribute: "data-geo"
  });
  initiate_geolocation();
});
function initiate_geolocation() {
  navigator.geolocation.getCurrentPosition(handle_geolocation_query);
}

function handle_geolocation_query(position){
  if($('#location_section').length) {
    $('#toilet_lat').val(position.coords.latitude);
    $('#toilet_lng').val(position.coords.longitude);
  }
}

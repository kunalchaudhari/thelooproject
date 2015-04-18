$(document).ready(function(){
  $("#location_input").geocomplete({ 
    details: "#location_section",
    detailsAttribute: "data-geo"
  });
});

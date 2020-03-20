import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.opacity = '0.8';
      element.style.width = '25px';
      element.style.height = '25px';

      const markerElement = new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);

      const markerDiv = markerElement.getElement();

      // TODO: find a way to keep the popup there if you click on it
      markerDiv.addEventListener('mouseenter', () => markerElement.togglePopup());
      // markerDiv.addEventListener('mouseleave', () => markerElement.togglePopup());
      // markerDiv.addEventListener('click', () => {
      //   popup.toggleClassName('popup-click');
      // });
      // markerDiv.addEventListener('mouseleave', () => {
      //   const popupMarker = markerElement.getPopup();
      //   const popupElement = popupMarker.getElement();
      //   if (!popupElement.classList.contains('popup-click')) {
      //     popupMarker.remove();
      //   }
      // });
    });

    fitMapToMarkers(map, markers);

    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      mapboxgl: mapboxgl }));
  }
};

export { initMapbox };


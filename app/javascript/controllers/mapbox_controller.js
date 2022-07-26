import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/dangermouse87/cl61uenag007114oc8pu4v5zy'

      //'https://api.mapbox.com/styles/v1/dangermouse87/cl61uenag007114oc8pu4v5zy.html?title=view&access_token=pk.eyJ1IjoiZGFuZ2VybW91c2U4NyIsImEiOiJjbDQ2eXM5ZnQwMnVkM2NsOWM3MWVwcTM5In0.8SHj8a7kjrZR0cla4pVBig&zoomwheel=true&fresh=true#11.5/35.6446/139.7461'

    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}

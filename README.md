# Kindred — routes with mapped context

Kindred accepts place names and addresses, calculates walking or driving route alternatives, and lists mapped shops, markets, police stations, and street lights near every route. Use `start-site.bat` to launch it, or run `python -m http.server 8000` from this folder and open `http://localhost:8000`.

## Plan a journey

1. Search for the start and destination, then select the matching place suggestion for each.
2. Choose Walk or Drive and press **Find route options**.
3. Expand a route under **Shops & places** to see mapped listings and the nearest police station. Select a route card to highlight it.
4. **Night** asks Valhalla to prefer mapped lit footpaths for walking and higher-class roads for driving. Routes are then ranked using mapped shops, street lights, and nearby police. Green/yellow/red show mapped context levels only, not real-world safety. The graph may have no lighting tags for streets and has no live crowd or business-hours feed.
5. Open the journey in Google Maps for turn-by-turn directions.

Shops and amenities are searched in a corridor near the route geometry. Route and map service data can be incomplete. Distance-to-route values are estimates based on sampled route points. OpenStreetMap “not mapped” does not mean a place or street light is absent.

## Frequent places and profile

**My places** lets you save a name, email, and favorite place searches to this browser. These are local prototype details, not a secure user account. Saved places appear on the route page with Start and Destination actions. Do not enter passwords or sensitive account data. A public launch needs real authentication, a backend, consent and privacy review.

## SOS

The trusted contact is stored in browser storage. SOS and Call 112 stay in the page header. SOS asks for location and prepares a text message; tap Open Messages, review it, then tap Send. You can also copy the message. It does not send messages silently or dispatch emergency services. For immediate danger in India, call 112.

## Map and data services

- MapLibre GL JS with OpenStreetMap standard raster tiles. The public tile service is best-effort and has a usage policy; use a hosted provider or self-hosted tiles before a public or commercial launch. [OpenStreetMap tile usage policy](https://operations.osmfoundation.org/policies/tiles/).
- Nominatim place search.
- Public [Valhalla service](https://valhalla.openstreetmap.de/). Night mode sends Valhalla `use_lit` for walking. This prefers lit streets in route data, but cannot guarantee them.
- Overpass API queries for route context, with a second public endpoint as fallback.
- Google Maps links open selected places or the chosen trip. The site does not embed Google’s map or use Google Places APIs; a production Google Maps integration requires its own Google Cloud setup and key.

All public endpoints are best effort and have fair-use limits. This is a prototype, not a dependable emergency product. Review [privacy summary](privacy.html).

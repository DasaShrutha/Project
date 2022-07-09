Leaflet Changelog
=================

(all changes without author notice are by [@mourner](https://github.com/mourner))

## 1.5.0 (2019-05-08)

### API changes
* Add `keepAspectRatio` option to `VideoOverlay` ([#6038](https://github.com/Leaflet/Leaflet/pull/6038) by [ronikar](https://github.com/ronikar))
* Add support for `keydown` and `keyup` events to map ([#6421](https://github.com/Leaflet/Leaflet/pull/6421) by [OrBin](https://github.com/OrBin)) 
* Add `shadowPane` option to `Marker` ([#6460](https://github.com/Leaflet/Leaflet/pull/6460) by [alexfig](https://github.com/alexfig)) 
* Add `L.SVGOverlay` class ([#6517](https://github.com/Leaflet/Leaflet/pull/6517) by [Zsavajji](https://github.com/Zsavajji)) 
* Add `getIcon` method to `Marker` ([#6457](https://github.com/Leaflet/Leaflet/pull/6457) by [OsamaShabrez](https://github.com/OsamaShabrez)) 

### Improvements
* Update attribution link to HTTPS ([#6593](https://github.com/Leaflet/Leaflet/pull/6593) by [WillSelway](https://github.com/WillSelway)) 
* Make `DivIcon` `html` option accept Element ([#6571](https://github.com/Leaflet/Leaflet/pull/6571) by [oscar-sensornet](https://github.com/oscar-sensornet)) 
* Microoptimize `GeoJSON._setLayerStyle` ([#6616](https://github.com/Leaflet/Leaflet/pull/6616) by [johnd0e](https://github.com/johnd0e)) 
* Reuse `openPopup` and `openTooltip` code ([#6613](https://github.com/Leaflet/Leaflet/pull/6613) by [johnd0e](https://github.com/johnd0e)) 

### Bug fixes
* Fix `Control.Layers` radio buttons when using multiple maps ([#6483](https://github.com/Leaflet/Leaflet/pull/6483) by [jjimenezshaw](https://github.com/jjimenezshaw)) 
* Explicitly remove controls from the map on map unload ([#6488](https://github.com/Leaflet/Leaflet/pull/6488) by [IvanSanchez](https://github.com/IvanSanchez)) 
* Fixed a bug where mouseover on Canvas-rendered polylines acted inconsistently ([#6516](https://github.com/Leaflet/Leaflet/pull/6516) by [IvanSanchez](https://github.com/IvanSanchez)) 
* Prevent tiles highlighting in IE11 ([#6570](https://github.com/Leaflet/Leaflet/pull/6570) by [VictorVelarde](https://github.com/VictorVelarde)) 
* Fix `L.Util.formatNum` rounding precision ([#6587](https://github.com/Leaflet/Leaflet/pull/6587) by [inkstak](https://github.com/inkstak)) 
* Fix crash, when setting opacity on `Marker` without icon ([#6610](https://github.com/Leaflet/Leaflet/pull/6610) by [charlie67](https://github.com/charlie67)) 
* Make synthetic `dblclick` event relate to left mouse button ([#6628](https://github.com/Leaflet/Leaflet/pull/6628) by [IvanSanchez](https://github.com/IvanSanchez)) 

### Docs & Web Site
* Minor spelling corrections in Docs/Tutorials ([#6464](https://github.com/Leaflet/Leaflet/pull/6464) by [ilyankou](https://github.com/ilyankou)) 
* Document `toGeoJSON`'s `precision` argument ([#6375](https://github.com/Leaflet/Leaflet/pull/6375) by [rkatka](https://github.com/rkatka)) 
* Add background color CSS declaration ([#6614](https://github.com/Leaflet/Leaflet/pull/6614) by [milesflo](https://github.com/milesflo)) 
* Clarify `Events.off` method docs ([#6619](https://github.com/Leaflet/Leaflet/pull/6619) by [lancebendo](https://github.com/lancebendo)) 
* Fix `Layer` example ([#6636](https://github.com/Leaflet/Leaflet/pull/6636) by [billygarrison](https://github.com/billygarrison)) 

### Development workflow
* Update dev dependencies & remove coverage scripts ([#6635](https://github.com/Leaflet/Leaflet/pull/6635) by [mourner](https://github.com/mourner)) 


## 1.4.0 (2018-12-30)

### API changes

* Add new `Map.panInside` method ([#6054](https://github.com/Leaflet/Leaflet/pull/6054) by [daverayment](https://github.com/daverayment))

### Improvements

* Remove unused `_drawnLayers` object ([#6324](https://github.com/Leaflet/Leaflet/pull/6324) by [ud09](https://github.com/ud09))
* Avoid unnecessary redrawing in `TileLayer.setUrl()` when URL does not change ([#6313](https://github.com/Leaflet/Leaflet/pull/6313) by [JackNeus](https://github.com/JackNeus))
* Use `section` instead of `form` in layers control ([#6380](https://github.com/Leaflet/Leaflet/pull/6380) by [hundekoerper](https://github.com/hundekoerper))
* Add IE11 linked SVG elements support to `DomUtil.getClass` function ([#6366](https://github.com/Leaflet/Leaflet/pull/6366) by [Schleuse](https://github.com/Schleuse))

### Bug fixes

* Set internal flags at beginning of map initialization ([#6362](https://github.com/Leaflet/Leaflet/pull/6362) by [ghybs](https://github.com/ghybs))
* Guard against layers no longer attached to a map in `bringToFront/Back()` ([#6389](https://github.com/Leaflet/Leaflet/pull/6389) by [perliedman](https://github.com/perliedman))
* Fix `autoPan` option when popup content gets updated while a panning animation is running ([#6365](https://github.com/Leaflet/Leaflet/pull/6365) by [Schleuse](https://github.com/Schleuse))
* Ignore dash arrays with non-numeric entries in canvas ([#6387](https://github.com/Leaflet/Leaflet/pull/6387) by [perliedman](https://github.com/perliedman))

### Docs & Web Site

* Remove additional `<tr>` ([#6334](https://github.com/Leaflet/Leaflet/pull/6334) by [mgred](https://github.com/mgred))
* Fix command to run test with karma options ([#6363](https://github.com/Leaflet/Leaflet/pull/6363) by [ghybs](https://github.com/ghybs))
* Add OSM logo to "Trusted by the best" section ([#6360](https://github.com/Leaflet/Leaflet/pull/6360) by [astv99](https://github.com/astv99))
* Fix typos ([#6398](https://github.com/Leaflet/Leaflet/pull/6398) by [HarryMaher](https://github.com/HarryMaher))
* Make it clear zoomanim is not always fired on every frame ([#6388](https://github.com/Leaflet/Leaflet/pull/6388) by [perliedman](https://github.com/perliedman))
* Add copyright references to code examples ([#6439](https://github.com/Leaflet/Leaflet/pull/6439) by [jbelien](https://github.com/jbelien))
* Fix insecure content error ([#6442](https://github.com/Leaflet/Leaflet/pull/6442) by [tambry](https://github.com/tambry))
* Remove incorrect Earth GIF ([#6326](https://github.com/Leaflet/Leaflet/pull/6326) by [Vincentdecursay](https://github.com/Vincentdecursay))
* Fix duplicated sentence in SVG section ([#6448](https://github.com/Leaflet/Leaflet/pull/6448) by [patrickdemers6](https://github.com/patrickdemers6))

## 1.3.4 (2018-08-21)

### Improvements

* Reset max-width and max-height styles for tiles in custom panes ([#6255](https://github.com/Leaflet/Leaflet/issues/6255) by [jerekshoe](https://github.com/jerekshoe))
* Add unprefixed `cursor: grab` style ([#6281](https://github.com/Leaflet/Leaflet/issues/6281) by [Malvoz](https://github.com/Malvoz))
* Remove legacy prefixed styles, add unprefixed styles ([#6282](https://github.com/Leaflet/Leaflet/issues/6282) by [Malvoz](https://github.com/Malvoz))

### Bug fixes

* Move set/getAttribute('src') calls from `GridLayer` into `TileLayer` ([#6264](https://github.com/Leaflet/Leaflet/issues/6264) by [IvanSanchez](https://github.com/IvanSanchez))
* Support comma- or space-separated strings in `Canvas` `dashArray` option ([#6277](https://github.com/Leaflet/Leaflet/issues/6277) by [IvanSanchez](https://github.com/IvanSanchez))
* Remove trailing commas to avoid crashes in some IE browsers ([#6279](https://github.com/Leaflet/Leaflet/issues/6279) by [helbling](https://github.com/helbling))
* Fixed capitalization of `webkitTransform` property, which broke transformations on certain Webkit browsers ([#6290](https://github.com/Leaflet/Leaflet/issues/6290) by [tuckergordon](https://github.com/tuckergordon))

### Docs & Web Site

* Document `zoomControl` map option ([#6254](https://github.com/Leaflet/Leaflet/issues/6254) by [IvanSanchez](https://github.com/IvanSanchez))
* Explicitly note attribution obligation ([#6261](https://github.com/Leaflet/Leaflet/issues/6261) by [pietervdvn](https://github.com/pietervdvn))
* Minor fixes of `ImageOverlay` docs ([#6266](https://github.com/Leaflet/Leaflet/issues/6266) by [jgravois](https://github.com/jgravois))
* Add Edge to the list of supported browsers ([#6270](https://github.com/Leaflet/Leaflet/issues/6270) by [matkoniecz](https://github.com/matkoniecz))
* Remove references to Leaflet UserVoice page ([#6291](https://github.com/Leaflet/Leaflet/issues/6291) by [zstadler](https://github.com/zstadler))
* Reword docstrings for draggable markers ([#6296](https://github.com/Leaflet/Leaflet/issues/6296) by [IvanSanchez](https://github.com/IvanSanchez))

## 1.3.3 (2018-07-18)

### Bug fixes

* Remove `module` field from `package.json` ([#6239](https://github.com/Leaflet/Leaflet/issues/6239))

## 1.3.2 (2018-07-17)

### Improvements

* Add `use-credentials` CORS option to `ImageOverlay` and `TileLayer` ([#6016](https://github.com/Leaflet/Leaflet/issues/6016) by [caleblogan](https://github.com/caleblogan)) + unit tests ([#6022](https://github.com/Leaflet/Leaflet/issues/6022) and [#6027](https://github.com/Leaflet/Leaflet/issues/6027) by [ghybs](https://github.com/ghybs))
* Clean up references to global `L` in source code ([#6047](https://github.com/Leaflet/Leaflet/issues/6047) and [#6048](https://github.com/Leaflet/Leaflet/issues/6048) by [ghybs](https://github.com/ghybs))
* Allow reset of `Canvas` `dashArray` option + support array type ([#6200](https://github.com/Leaflet/Leaflet/issues/6200) by [McBen](https://github.com/McBen))

### Bug fixes

* Respect the `preferCanvas` option in all panes ([#6019](https://github.com/Leaflet/Leaflet/issues/6019) by [mjumbewu](https://github.com/mjumbewu))
* Do not fire `tileload` event if tile has empty `src` ([#6025](https://github.com/Leaflet/Leaflet/issues/6025) by [cherniavskii](https://github.com/cherniavskii))
* Fix race condition when removing canvas before it has rendered ([#6033](https://github.com/Leaflet/Leaflet/issues/6033) by [louMoxy](https://github.com/louMoxy))
* Fix memory leak in canvas renderer ([#6117](https://github.com/Leaflet/Leaflet/issues/6117) by [aj8k](https://github.com/aj8k))
* Fix dragging for CSS scaled map ([#6055](https://github.com/Leaflet/Leaflet/issues/6055) by [ghybs](https://github.com/ghybs))
* Handle `Polygon`s with empty array of `LatLng`s ([#6119](https://github.com/Leaflet/Leaflet/issues/6119) by [BakuCity](https://github.com/BakuCity))
* Fix view bounds calculation in geolocation event handler ([#6140](https://github.com/Leaflet/Leaflet/issues/6140) by [wladich](https://github.com/wladich))
* Fix error removing map and resizing window at the same time ([#6160](https://github.com/Leaflet/Leaflet/issues/6160) by [danzel](https://github.com/danzel))
* Stop pan key event when pan animation is in progress ([#6231](https://github.com/Leaflet/Leaflet/issues/6231) by [cherniavskii](https://github.com/cherniavskii))

### Docs & Web Site

* Use more explicit tiles in `Map panes` example ([#6018](https://github.com/Leaflet/Leaflet/issues/6018) by [ghybs](https://github.com/ghybs))
* Document parameter of `closestLayerPoint` method ([#6060](https://github.com/Leaflet/Leaflet/issues/6060) by [mattdsteele](https://github.com/mattdsteele))
* Update year ranges ([#6076](https://github.com/Leaflet/Leaflet/issues/6076) by [BakuCity](https://github.com/BakuCity))
* Use https everywhere for OSM links ([#6082](https://github.com/Leaflet/Leaflet/issues/6082) by [rzoller](https://github.com/rzoller))
* Fix typo in `VideoOverlay.js` example docs ([#6090](https://github.com/Leaflet/Leaflet/issues/6090) by [zhuang-hao-ming](https://github.com/zhuang-hao-ming))
* Fix typo in `LatLng` docstring ([#6138](https://github.com/Leaflet/Leaflet/issues/6138) by [jieter](https://github.com/jieter))
* Use https everywhere and get rid of mixed content warnings ([#6151](https://github.com/Leaflet/Leaflet/issues/6151) by [theel0ja](https://github.com/theel0ja))
* More accurate `Browser.retina` explanation ([#6203](https://github.com/Leaflet/Leaflet/issues/6203) by [JLuc](https://github.com/JLuc))
* Use link to official RFC 7946 GeoJSON spec ([#6211](https://github.com/Leaflet/Leaflet/issues/6211) by [ghybs](https://github.com/ghybs))

### ES6 / Rollup

* Add ES module build ([#6021](https://github.com/Leaflet/Leaflet/issues/6021) by [Rich-Harris](https://github.com/Rich-Harris))

### Development workflow

* Move external dependencies to `node_modules` ([#6028](https://github.com/Leaflet/Leaflet/issues/6028) by [cherniavskii](https://github.com/cherniavskii))
* Remove `jake` dependency and use NPM scripts instead ([#5828](https://github.com/Leaflet/Leaflet/issues/5828) by [cherniavskii](https://github.com/cherniavskii))
* Update `ssri` dependency to `5.2.2` ([#6086](https://github.com/Leaflet/Leaflet/issues/6086) by [cherniavskii](https://github.com/cherniavskii))
* Set div width for `getBoundsZoom` parameter `inside` ([#6192](https://github.com/Leaflet/Leaflet/issues/6192) by [ghybs](https://github.com/ghybs))
* Fix unit tests for graphical browsers ([#6199](https://github.com/Leaflet/Leaflet/issues/6199) and [#6202](https://github.com/Leaflet/Leaflet/issues/6202) by [ghybs](https://github.com/ghybs))
* Run tests in Firefox graphical browser as part of CI ([#5831](https://github.com/Leaflet/Leaflet/issues/5831) by [cherniavskii](https://github.com/cherniavskii))


## 1.3.1 (2018-01-18)

### Bug fixes

* Fix `L.TileLayer`regression, which caused incorrect tile URLs ([#6006](https://github.com/Leaflet/Leaflet/issues/6006) by [ghybs](https://github.com/ghybs))


## 1.3.0 (2018-01-15)

### API changes

* Add `tolerance` option to `L.Renderer` instead of hardcoded tolerance for touch devices ([#5922](https://github.com/Leaflet/Leaflet/issues/5922) by [Muscot](https://github.com/Muscot)).

### Improvements

* Use more stable form of Haversine formula ([#5935](https://github.com/Leaflet/Leaflet/issues/5935) by [jussimattas](https://github.com/jussimattas))
* Add `autoPan` option to `L.Marker` ([#5651](https://github.com/Leaflet/Leaflet/issues/5651) by [alenaksu](https://github.com/alenaksu))
* Cancel http requests for outdated tiles ([#5615](https://github.com/Leaflet/Leaflet/issues/5615) by [jbccollins](https://github.com/jbccollins))
* Add `closeOnEscapeKey` option to `L.Popup` ([#5730](https://github.com/Leaflet/Leaflet/issues/5730) by [Mickyfen17](https://github.com/Mickyfen17))
* Add `tileerror` tests to `L.GridLayer` spec ([#5805](https://github.com/Leaflet/Leaflet/issues/5805) by [msiadak](https://github.com/msiadak))
* Use `eachLayer` method for iterations over layers in `L.LayerGroup` ([#5809](https://github.com/Leaflet/Leaflet/issues/5809) by [cherniavskii](https://github.com/cherniavskii))
* Change `Util.formatNum` default to 6 decimals ([#5492](https://github.com/Leaflet/Leaflet/issues/5492) by [fminuti](https://github.com/fminuti))
* Fire `zoomlevelschange` event when calling `setMinZoom` & `setMaxZoom` ([#5230](https://github.com/Leaflet/Leaflet/issues/5230) by [mynameisstephen](https://github.com/mynameisstephen))
* Use zoom parameter if passed to `L.TileLayer`'s `getTileUrl` method ([#5822](https://github.com/Leaflet/Leaflet/issues/5822) by [broncha](https://github.com/broncha))
* Round circle radius in renderer instead of layer ([#5859](https://github.com/Leaflet/Leaflet/issues/5859) by [perliedman](https://github.com/perliedman))
* Make `L.LayerGroup` accept options ([#5792](https://github.com/Leaflet/Leaflet/issues/5792) by [iH8](https://github.com/iH8))
* Round pan offset towards zero ([#5858](https://github.com/Leaflet/Leaflet/issues/5858) by [perliedman](https://github.com/perliedman))
* Improve heuristic for what event targets are considered markers ([#5885](https://github.com/Leaflet/Leaflet/issues/5885) by [perliedman](https://github.com/perliedman))
* Add `typeof` check to `checkDeprecatedMixinEvents` ([#5901](https://github.com/Leaflet/Leaflet/issues/5901) by [murb](https://github.com/murb))
* Optimize images ([#5936](https://github.com/Leaflet/Leaflet/issues/5936) by [grischard](https://github.com/grischard))
* Add `addTo` static function to `L.Handler` class ([#5930](https://github.com/Leaflet/Leaflet/issues/5930) by [cherniavskii](https://github.com/cherniavskii))
* `L.ImageOverlay` accepts `ImageElement` ([#5948](https://github.com/Leaflet/Leaflet/issues/5948) by [ronikar](https://github.com/ronikar))

### Bug fixes

* Fix adding CSS classes in `L.VideoOverlay`, which caused map crash in IE8 ([#5731](https://github.com/Leaflet/Leaflet/issues/5731) by [Dzwiedzminator](https://github.com/Dzwiedzminator) and [#5785](https://github.com/Leaflet/Leaflet/issues/5785) by [cherniavskii](https://github.com/cherniavskii))
* No inertia if drag is stopped before ending the drag ([#5690](https://github.com/Leaflet/Leaflet/issues/5690) by [perliedman](https://github.com/perliedman))
* Remove tiles from the `_tiles` cache when they're aborted ([#5634](https://github.com/Leaflet/Leaflet/issues/5634) by [oliverheilig](https://github.com/oliverheilig))
* Use same condition for adding as well as removing double tap listener ([#5598](https://github.com/Leaflet/Leaflet/issues/5598) by [perliedman](https://github.com/perliedman))
* Correctly wrap tile coordinate bounds ([#5715](https://github.com/Leaflet/Leaflet/issues/5715) by [perliedman](https://github.com/perliedman))
* Fix `L.TileLayer` infinite error loop ([#5783](https://github.com/Leaflet/Leaflet/issues/5783) by [cherniavskii](https://github.com/cherniavskii))
* Fix map not rendering when images have max-height ([#5778](https://github.com/Leaflet/Leaflet/issues/5778) by [idanen](https://github.com/idanen))
* Add defensive check for `this._map` in `L.Marker`'s `update` method ([#5736](https://github.com/Leaflet/Leaflet/issues/5736) by [dnepromell](https://github.com/dnepromell))
* Fix zoom when map container is scaled ([#5794](https://github.com/Leaflet/Leaflet/issues/5794) by [cherniavskii](https://github.com/cherniavskii))
* Update DomPointer.js to revert typo ([#5817](https://github.com/Leaflet/Leaflet/issues/5817) by [daverayment](https://github.com/daverayment))
* Fix `L.ImageOverlay` `className` option ([#5830](https://github.com/Leaflet/Leaflet/issues/5830) by [cherniavskii](https://github.com/cherniavskii))
* Fix `L.TileLayer.WMS` when using Polar stereographic ([#5618](https://github.com/Leaflet/Leaflet/issues/5618) by [scaddenp](https://github.com/scaddenp))
* Stop animation before removing map ([#5876](https://github.com/Leaflet/Leaflet/issues/5876) by [dnepromell](https://github.com/dnepromell) and [#5918](https://github.com/Leaflet/Leaflet/issues/5918) by [aaronplanell](https://github.com/aaronplanell))
* Stop locate before removing map ([#5893](https://github.com/Leaflet/Leaflet/issues/5893) by [ghybs](https://github.com/ghybs))
* Reset `GridLayer`'s `_tileZoom` to `undefined` instead of `null` ([#5888](https://github.com/Leaflet/Leaflet/issues/5888) by [iH8](https://github.com/iH8))
* Fix `L.Map`'s `map.flyTo` method to respect `noMoveStart` option ([#5923](https://github.com/Leaflet/Leaflet/issues/5923) by [iPrytz](https://github.com/iPrytz))
* Fix map pan when `touchZoom` is disabled ([#5952](https://github.com/Leaflet/Leaflet/issues/5952) by [cherniavskii](https://github.com/cherniavskii))
* Fix `L.SVG` to reset size on remove from map ([#5966](https://github.com/Leaflet/Leaflet/issues/5966) by [ghybs](https://github.com/ghybs))
* Fix `L.Marker` to set `alt` attribute for img-based Icons only ([#5979](https://github.com/Leaflet/Leaflet/issues/5979) by [msiadak](https://github.com/msiadak))

### Docs & Web Site

* Add documentation for `PolyLine.closestLayerPoint` ([#5701](https://github.com/Leaflet/Leaflet/issues/5701) by [perliedman](https://github.com/perliedman))
* Replace urls for samples in wms documentation ([#5712](https://github.com/Leaflet/Leaflet/issues/5712) by [jjimenezshaw](https://github.com/jjimenezshaw))
* Add `DomEvent.stop` event type to docs ([#5733](https://github.com/Leaflet/Leaflet/issues/5733) by [theashyster](https://github.com/theashyster))
* Update links to GeoJSON spec in GeoJSON examples ([#5725](https://github.com/Leaflet/Leaflet/issues/5725) by [astridx](https://github.com/astridx))
* Improve docs for `L.LatLngBounds` `pad` method ([#5748](https://github.com/Leaflet/Leaflet/issues/5748) by [CalvinWilliams1012](https://github.com/CalvinWilliams1012))
* Improve Zoom-levels documentation to reflect function properly ([#5769](https://github.com/Leaflet/Leaflet/issues/5769) by [CalvinWilliams1012](https://github.com/CalvinWilliams1012))
* Fix map's height and width in examples to make attributions visible on mobile ([#5772](https://github.com/Leaflet/Leaflet/issues/5772) by [CalvinWilliams1012](https://github.com/CalvinWilliams1012) and [#5819](https://github.com/Leaflet/Leaflet/issues/5819) by [cherniavskii](https://github.com/cherniavskii))
* Fix `L.FeatureGroup` `bringToBack` method docs ([#5788](https://github.com/Leaflet/Leaflet/issues/5788) by [fpopa](https://github.com/fpopa))
* Fix `L.LatLng` `distanceTo` method description ([#5791](https://github.com/Leaflet/Leaflet/issues/5791) by [loisgh](https://github.com/loisgh))
* Fix docs redirects to latest version reference ([#5824](https://github.com/Leaflet/Leaflet/issues/5824) by [cherniavskii](https://github.com/cherniavskii))
* Add CDN alternatives ([#5837](https://github.com/Leaflet/Leaflet/issues/5837) by [ghybs](https://github.com/ghybs))
* Update docs for `L.DomEvent.off()` ([#5855](https://github.com/Leaflet/Leaflet/issues/5855) by [77ganesh](https://github.com/77ganesh) and [#5976](https://github.com/Leaflet/Leaflet/issues/5976) by [kring](https://github.com/kring))
* Move `L.SVG` factory docs to appropriate place ([#5864](https://github.com/Leaflet/Leaflet/issues/5864) by [cherniavskii](https://github.com/cherniavskii))
* New Leaflet playgrounds on Plunker, Codepen and JSFiddle ([#5868](https://github.com/Leaflet/Leaflet/issues/5868) by [iH8](https://github.com/iH8))
* Clarify that any option keys can be used ([#5877](https://github.com/Leaflet/Leaflet/issues/5877) by [perliedman](https://github.com/perliedman))
* Add notes about some classes not inheriting Class ([#5878](https://github.com/Leaflet/Leaflet/issues/5878) by [perliedman](https://github.com/perliedman))
* Clean up and document event propagation properties ([#5880](https://github.com/Leaflet/Leaflet/issues/5880) by [perliedman](https://github.com/perliedman))
* Update building instructions ([#5911](https://github.com/Leaflet/Leaflet/issues/5911) by [shadeland](https://github.com/shadeland))
* Document `mouseup` event for interactive `L.Layer` ([#5941](https://github.com/Leaflet/Leaflet/issues/5941) by [germansokolov13](https://github.com/germansokolov13))
* Document `L.Icon`'s `tooltipAnchor` option, update `tooltipAnchor` and `popupAnchor` default values docs ([#5989](https://github.com/Leaflet/Leaflet/issues/5989) by [cherniavskii](https://github.com/cherniavskii))

### ES6 / Rollup

* Tweak `legacy` option in rollup config - now Leaflet works in IE again ([#5929](https://github.com/Leaflet/Leaflet/issues/5929) by [IvanSanchez](https://github.com/IvanSanchez))
* Remove warning alert in watch bundle ([#5714](https://github.com/Leaflet/Leaflet/issues/5714) by [perliedman](https://github.com/perliedman))
* New rollup config signature ([#5812](https://github.com/Leaflet/Leaflet/issues/5812) by [iH8](https://github.com/iH8))


## 1.2.0 (2017-08-08)

### API Changes

* Make `L.LineUtil._flat` public as `L.LineUtil.isFlat` ([#5667](https://github.com/Leaflet/Leaflet/issues/5667) by [yohanboniface](https://github.com/yohanboniface))
* `L.ImageOverlay`'s `setBounds` method accepts an array of points, not only a `L.LatLngBounds` instance ([#5687](https://github.com/Leaflet/Leaflet/pull/5687) by [ronikar](https://github.com/ronikar)

### Improvements

* `VideoOverlay` accepts `VideoElement` ([#5661](https://github.com/Leaflet/Leaflet/issues/5661) by [eavidan-0](https://github.com/eavidan-0))
* Documentation improvements by [ghybs](https://github.com/ghybs), [thachhoang](https://github.com/thachhoang), [colbin8r](https://github.com/colbin8r), [Timmmm](https://github.com/Timmmm), [cyrilf](https://github.com/cyrilf) and [JonDum](https://github.com/JonDum)
* Filter published files on npm ([#5626](https://github.com/Leaflet/Leaflet/issues/5626) by [TrySound](https://github.com/TrySound)), [e7o-de](https://github.com/e7o-de)
* Throw an error if trying to use `addLayer` with something that is not a `Layer` ([#5689](https://github.com/Leaflet/Leaflet/pull/5689) by [perliedman](https://github.com/perliedman))
* Ensure copyright banner is kept in the minified `leaflet.js` ([#5682](https://github.com/Leaflet/Leaflet/pull/5682) by [jgravois](https://github.com/jgravois))

### Bug fixes

* Fix non-extendable objects regression of 1.1.0 ([#5658](https://github.com/Leaflet/Leaflet/pull/5658) by [mourner](https://github.com/mourner))
* `Control.Layers` properly handles adding the same layer multiple times, as well as cleanup ([#5672](https://github.com/Leaflet/Leaflet/issues/5672), [#5684](https://github.com/Leaflet/Leaflet/issues/5684) and [#5673](https://github.com/Leaflet/Leaflet/issues/5673) by [jjimenezshaw](https://github.com/jjimenezshaw))
* Make `L.Draggable._dragging` public again ([#5659](https://github.com/Leaflet/Leaflet/issues/5659) by [yohanboniface](https://github.com/yohanboniface))
* `DomEvent.off` returns `this` ([#5601](https://github.com/Leaflet/Leaflet/issues/5601) by [jelhan](https://github.com/jelhan))
* Don't use functions from the global `L` internally ([#5596](https://github.com/Leaflet/Leaflet/issues/5596) by [atd-schubert](https://github.com/atd-schubert))
* Return `this` instead of `addOne` in `DomEvent.disableScrollPropagation` ([#5595](https://github.com/Leaflet/Leaflet/issues/5595) by [Eschon](https://github.com/Eschon))


## 1.1.0 (2017-06-27)

### API changes

* Add deprecation notice for `L.Mixin.Events`, fixes [#5358](https://github.com/Leaflet/Leaflet/issues/5358) ([#5365](https://github.com/Leaflet/Leaflet/issues/5365)) (by [perliedman](https://github.com/perliedman))
* Turn `nonBubblingEvents` into a documented boolean option ([#4883](https://github.com/Leaflet/Leaflet/issues/4883) by [IvanSanchez](https://github.com/IvanSanchez))
* Add `L.transformation` factory, allow creation from array ([#5282](https://github.com/Leaflet/Leaflet/issues/5282) by [anetz89](https://github.com/anetz89))
* `toGeoJSON` methods now default to a precision of six decimals (as recommended in the [GeoJSON spec](https://tools.ietf.org/html/rfc7946#section-11.2)), precision is settable through a method parameter ([#5544](https://github.com/Leaflet/Leaflet/pull/5544) by [mattgrande](https://github.com/mattgrande))

### Docs & Web Site

* `reference.html` now always points to latest stable docs ([#5490](https://github.com/Leaflet/Leaflet/issues/5490) by [IvanSanchez](https://github.com/IvanSanchez), [#5493](https://github.com/Leaflet/Leaflet/issues/5493) by [alyhegazy](https://github.com/alyhegazy))
* Subresource integrity information and scripts ([#5468](https://github.com/Leaflet/Leaflet/issues/5468) by [IvanSanchez](https://github.com/IvanSanchez))
* New tutorial on zooming (by [IvanSanchez](https://github.com/IvanSanchez), [#5007](https://github.com/Leaflet/Leaflet/issues/5007))
* Minor documentation improvements by [perliedman](https://github.com/perliedman), [veltman](https://github.com/veltman), [FDMS](https://github.com/FDMS), [ghybs](https://github.com/ghybs), [RichardLitt](https://github.com/RichardLitt), [gatsbimantico](https://github.com/gatsbimantico), [daturkel](https://github.com/daturkel), [jgravois](https://github.com/jgravois), [geografa](https://github.com/geografa), [BjoernSchilberg](https://github.com/BjoernSchilberg), [IvanSanchez](https://github.com/IvanSanchez), [bozdoz](https://github.com/bozdoz), [zemadz](https://github.com/zemadz), [danzel](https://github.com/danzel), [jieter](https://github.com/jieter), [massic80](https://github.com/massic80), [jjimenezshaw](https://github.com/jjimenezshaw), [hnrchrdl](https://github.com/hnrchrdl) and [RayBB](https://github.com/RayBB)

### ES6 / Rollup

* ES6 modules & Rollup ([#4989](https://github.com/Leaflet/Leaflet/issues/4989)) (by [mourner](https://github.com/mourner) and [IvanSanchez](https://github.com/IvanSanchez))
* Additional fixes, testing and cleanup of ES6 code by [thachhoang](https://github.com/thachhoang), [danzel](https://github.com/danzel), [jkuebart](https://github.com/jkuebart), [simon04](https://github.com/simon04), [perliedman](https://github.com/perliedman), [luiscamachopt](https://github.com/luiscamachopt) and [Trufi](https://github.com/Trufi) ([#5373](https://github.com/Leaflet/Leaflet/issues/5373), [#5417](https://github.com/Leaflet/Leaflet/issues/5417), [#5351](https://github.com/Leaflet/Leaflet/issues/5351), [#5330](https://github.com/Leaflet/Leaflet/issues/5330), [#5329](https://github.com/Leaflet/Leaflet/issues/5329), [#5489](https://github.com/Leaflet/Leaflet/issues/5489), [#5504](https://github.com/Leaflet/Leaflet/issues/5504), [#5456](https://github.com/Leaflet/Leaflet/issues/5456), [#5463](https://github.com/Leaflet/Leaflet/issues/5463))

### Improvements

* Add new class `L.VideoOverlay` ([#4988](https://github.com/Leaflet/Leaflet/issues/4988) by [IvanSanchez](https://github.com/IvanSanchez))
* Added z-index support to ImageOverlay ([#5418](https://github.com/Leaflet/Leaflet/issues/5418) by [Saulzi](https://github.com/Saulzi))
* Added error event to `ImageOverlay` layer and added tests for the new ([#5416](https://github.com/Leaflet/Leaflet/issues/5416) by [Saulzi](https://github.com/Saulzi))
* Add `className` option for `ImageOverlay` ([#5555](https://github.com/Leaflet/Leaflet/issues/5555) by [perliedman](https://github.com/perliedman))

### Bug fixes

* Handle edge case of empty bounds on `_getBoundsCenterZoom` ([#5157](https://github.com/Leaflet/Leaflet/issues/5157) by [IvanSanchez](https://github.com/IvanSanchez))
* Add new methods to `L.Bounds` for 2 missing corners, fixes [#5475](https://github.com/Leaflet/Leaflet/issues/5475) ([#5488](https://github.com/Leaflet/Leaflet/issues/5488) by [ghybs](https://github.com/ghybs))
* Handle `Polyline`s with empty array of `LatLng`s, [#5497](https://github.com/Leaflet/Leaflet/issues/5497) ([#5498](https://github.com/Leaflet/Leaflet/issues/5498), by [perliedman](https://github.com/perliedman))
* Take `devicePixelRatio` into account for scrollwheel zoom in win10+chrome ([#5480](https://github.com/Leaflet/Leaflet/issues/5480)) (by [IvanSanchez](https://github.com/IvanSanchez))
* Add hook points to allow for a proper NoGap plugin ([#5476](https://github.com/Leaflet/Leaflet/issues/5476)) (by [IvanSanchez](https://github.com/IvanSanchez))
* Sanity check to prevent loading tiles when bounds are `Infinity` ([#5478](https://github.com/Leaflet/Leaflet/issues/5478), [#5479](https://github.com/Leaflet/Leaflet/issues/5479) by [IvanSanchez](https://github.com/IvanSanchez))
* Fix box zoom race condition ([#5452](https://github.com/Leaflet/Leaflet/issues/5452) by [ppaskaris](https://github.com/ppaskaris))
* On update set current tiles active to avoid pruning ([#5381](https://github.com/Leaflet/Leaflet/issues/5381)) ([#5431](https://github.com/Leaflet/Leaflet/issues/5431) by [oliverheilig](https://github.com/oliverheilig))
* Make `L.Mixin.Events` a simple object instead of a prototype so it doesn't have a 'constructor' property, fixes [#5451](https://github.com/Leaflet/Leaflet/issues/5451) ([#5453](https://github.com/Leaflet/Leaflet/issues/5453) by [luiscamachopt](https://github.com/luiscamachopt))
* Canvas: call `ctx.setLineDash` in `_fillStroke` [#5182](https://github.com/Leaflet/Leaflet/issues/5182) ([#5454](https://github.com/Leaflet/Leaflet/issues/5454) by [TeXitoi](https://github.com/TeXitoi))
* Only rearrange DOM in `toFront`/`toBack` if needed, fixes [#4050](https://github.com/Leaflet/Leaflet/issues/4050) ([#5465](https://github.com/Leaflet/Leaflet/issues/5465) by [perliedman](https://github.com/perliedman))
* Push back keyboard navigation order of `L.Popup`'s close button ([#5461](https://github.com/Leaflet/Leaflet/issues/5461) by [Mirodil](https://github.com/Mirodil))
* Remove spurious check in `DomUtil.preventOutline` ([#5435](https://github.com/Leaflet/Leaflet/issues/5435) by [qjas](https://github.com/qjas))
* Error handler in `ImageOverlay` for 404 links ([#5307](https://github.com/Leaflet/Leaflet/issues/5307)) by [APwhitehat](https://github.com/APwhitehat))
* Ensure renderer's container is initialized when a path is added to map ([#5404](https://github.com/Leaflet/Leaflet/issues/5404) by [IvanSanchez](https://github.com/IvanSanchez))
* Layers Control only add layer events to layers when we are on the map. Fixes [#5421](https://github.com/Leaflet/Leaflet/issues/5421) ([#5422](https://github.com/Leaflet/Leaflet/issues/5422) by [danzel](https://github.com/danzel))
* Layers Control can now become scrollable even if `collapsed: false`, fixes [#5328](https://github.com/Leaflet/Leaflet/issues/5328) ([#5348](https://github.com/Leaflet/Leaflet/issues/5348) by [ghybs](https://github.com/ghybs))
* Stop map on drag start instead of pointer down, fixes [#5350](https://github.com/Leaflet/Leaflet/issues/5350) ([#5378](https://github.com/Leaflet/Leaflet/issues/5378) by [perliedman](https://github.com/perliedman))
* fix invalid GeoJSON produced by nested `LayerGroups` ([#5359](https://github.com/Leaflet/Leaflet/issues/5359) by [Resonance1584](https://github.com/Resonance1584))
* Update toolbar inner border radius ([#5361](https://github.com/Leaflet/Leaflet/issues/5361) by [newmanw](https://github.com/newmanw))
* Export `lastId` in `Util` ([#5349](https://github.com/Leaflet/Leaflet/issues/5349) by [DenisCarriere](https://github.com/DenisCarriere))
* Do not stop keypress on escape if no popup is open, plus unit tests ([#5331](https://github.com/Leaflet/Leaflet/issues/5331) (by [IvanSanchez](https://github.com/IvanSanchez))
* Docs: remove `iframe` borders on examples ([#5327](https://github.com/Leaflet/Leaflet/issues/5327)) (by [tariqksoliman](https://github.com/tariqksoliman))
* Pull `min`/`maxNativeZoom` from `TileLayer` into `GridLayer`, as per [#5316](https://github.com/Leaflet/Leaflet/issues/5316). ([#5319](https://github.com/Leaflet/Leaflet/issues/5319) by [jkuebart](https://github.com/jkuebart))
* Disable click propagation on zoom control buttons, fixes [#5308](https://github.com/Leaflet/Leaflet/issues/5308) ([#5318](https://github.com/Leaflet/Leaflet/issues/5318) by [perliedman](https://github.com/perliedman))
* Add CSS for `-webkit-tap-highlight-color`, fixes [#5302](https://github.com/Leaflet/Leaflet/issues/5302) ([#5303](https://github.com/Leaflet/Leaflet/issues/5303) by [IvanSanchez](https://github.com/IvanSanchez))
* Removed type attribute in HTML5 files ([#5309](https://github.com/Leaflet/Leaflet/issues/5309) by [uzerus](https://github.com/uzerus))
* Add margin to `LatLngBounds.equals` method ([#5071](https://github.com/Leaflet/Leaflet/issues/5071) by [miguelcobain](https://github.com/miguelcobain))
* Add `L.Draggable` options and fix docstring ([#5301](https://github.com/Leaflet/Leaflet/issues/5301) by [IvanSanchez](https://github.com/IvanSanchez))
* Fix max/min calculation for `getBoundsZoom`, fixes [#5136](https://github.com/Leaflet/Leaflet/issues/5136) ([#5137](https://github.com/Leaflet/Leaflet/issues/5137) by [IvanSanchez](https://github.com/IvanSanchez))
* Scrubbing of detached DOM elements, prevents memory leaks; fixes [#5263](https://github.com/Leaflet/Leaflet/issues/5263) ([#5265](https://github.com/Leaflet/Leaflet/issues/5265) by [IvanSanchez](https://github.com/IvanSanchez))
* Remove `marker.dragging` when not on the map, fixes [#5293](https://github.com/Leaflet/Leaflet/issues/5293) ([#5295](https://github.com/Leaflet/Leaflet/issues/5295) by [danzel](https://github.com/danzel))
* Stop scroll propagation in `L.Layers.Control` in chrome>55 ([#5280](https://github.com/Leaflet/Leaflet/issues/5280) by [IvanSanchez](https://github.com/IvanSanchez))
* Allow HTML inputs in layer control's labels, fixes [#5116](https://github.com/Leaflet/Leaflet/issues/5116) ([#51165544](https://github.com/Leaflet/Leaflet/issues/5544) by [iZucken](https://github.com/iZucken))
* Fix possible null reference when auto detecting icon default path, fixes [#5534](https://github.com/Leaflet/Leaflet/issues/5534) ([#5535](https://github.com/Leaflet/Leaflet/issues/5535) by [williamscs](https://github.com/williamscs))
* Don't turn enter keypress into map clicks, fixes [#5499](https://github.com/Leaflet/Leaflet/issues/5499) ([#5507](https://github.com/Leaflet/Leaflet/issues/5507) by [perliedman](https://github.com/perliedman))
* Use minus character instead of hyphen in the zoom control ([#5501](https://github.com/Leaflet/Leaflet/issues/5501) by [damianmoore](https://github.com/damianmoore))

## 1.0.3 (2017-01-23)

### Bug fixes

* Avoid extra `L.Canvas` redraws on several scenarios (by [@perliedman](https://github.com/perliedman), [#5250](https://github.com/Leaflet/Leaflet/pull/5034), also thanks to [@manubb](https://github.com/manubb) for investigation and PR).
* Fix behaviour of `dblclick` events in [Chrome 55 due to `PointerEvent`s](https://developers.google.com/web/updates/2016/11/nic55#pointer-events) (by [@IvanSanchez](https://github.com/IvanSanchez), [#5185](https://github.com/Leaflet/Leaflet/pull/5185), [#5248](https://github.com/Leaflet/Leaflet/pull/5248), [#5268](https://github.com/Leaflet/Leaflet/pull/5268)).
* Fix a dangling comma making IE8 fail to parse the code (by [@batje](https://github.com/batje), [#5270](https://github.com/Leaflet/Leaflet/pull/5270)).
* Backport event handling fixes from [#5054](https://github.com/Leaflet/Leaflet/pull/5054) into `L.SVG.VML` for IE8 (by [@IvanSanchez](https://github.com/IvanSanchez), [#5215](https://github.com/Leaflet/Leaflet/pull/5215)).
* Fix a race condition when closing popups during their `popupopen` event (by [@hagai26](https://github.com/hagai26), [#5202](https://github.com/Leaflet/Leaflet/pull/5202)).
* Fix `getBoundsZoom` return value on CRSs with a flipped axis (by [@computerlove](https://github.com/computerlove), [#5204](https://github.com/Leaflet/Leaflet/pull/5204)).
* Avoid infinite loops when the `errorTileUrl` of a `L.TileLayer` returns 404 (by [@IvanSanchez](https://github.com/IvanSanchez), [#5177](https://github.com/Leaflet/Leaflet/pull/5177)).
* Remove erroneous initialization of unused event listeners (by [@Brikky](https://github.com/Brikky), [#5160](https://github.com/Leaflet/Leaflet/pull/5160)).
* Fix rounding of `L.Canvas` redraw areas to avoid artifacts during partial updates (by [@Ernie23](https://github.com/Ernie23), [#5148](https://github.com/Leaflet/Leaflet/pull/5148)).
* Fix `isPopupOpen()` behaviour of `L.Layer` when no popup is bound to a layer (by [@gvangool](https://github.com/gvangool), [#5106](https://github.com/Leaflet/Leaflet/pull/5106)).
* Add a sanity check in `LatLngBounds.contains()` to allow for non-instantiated `LatLng` objects (by [@IvanSanchez](https://github.com/IvanSanchez), [#5135](https://github.com/Leaflet/Leaflet/pull/5135)).
* Fix collapsing of `L.Control.Layers` when the `collapse` option is `false` (by [@perliedman](https://github.com/perliedman), [#5131](https://github.com/Leaflet/Leaflet/pull/5131)).

### API changes

* Added a new `WrapLatLngBounds` method to `L.CRS`, to fix an issue with `maxBounds` of `GridLayer`s (by [@IvanSanchez](https://github.com/IvanSanchez), [#5185](https://github.com/Leaflet/Leaflet/pull/5185), also thanks to [@DiogoMCampos](https://github.com/DiogoMCampos) for investigation).
* `L.Map.getSize()` will now return `0` instead of `NaN` in non-graphical environments (by [@ughitsaaron](https://github.com/ughitsaaron), [#5209](https://github.com/Leaflet/Leaflet/pull/5209)).

### Improvements

* Several minor documentation improvements by [@IvanSanchez](https://github.com/IvanSanchez), [@jieter](https://github.com/jieter), [@alonsogarciapablo](https://github.com/alonsogarciapablo), [@jasonoverland](https://github.com/jasonoverland), [@danzel](https://github.com/danzel), [@ghybs](https://github.com/ghybs), [@Ralf8686](https://github.com/Ralf8686), [@geoloep](https://github.com/geoloep)
* Add an `alt` attribute to the `<img>`s of marker shadows (by [@topicus](https://github.com/topicus), [#5259](https://github.com/Leaflet/Leaflet/pull/5259)).

## 1.0.2 (2016-11-21)

### Bug fixes

* Fix CSS for marker shadows when `max-width` is already set (by [@brunob](https://github.com/brunob), [#5046](https://github.com/Leaflet/Leaflet/pull/5046)).
* Fix canvas redraw when style updates fill and/or weight (by [@perliedman](https://github.com/perliedman), [#5034](https://github.com/Leaflet/Leaflet/pull/5034)).
* Prevent canvas from firing multiple `mouseover` events for same layer (by [@perliedman](https://github.com/perliedman), [#5033](https://github.com/Leaflet/Leaflet/pull/5033)).
* Fixed a race condition when removing and adding `L.Canvas` vectors during a zoom animation (by [@ghybs](https://github.com/ghybs)) [#5011](https://github.com/Leaflet/Leaflet/pull/5011).
* Fix zoom animation of ImageOverlay when CRS's Y axis is flipped (by [@perliedman](https://github.com/perliedman)), [#4993](https://github.com/Leaflet/Leaflet/pull/4993).
* Fix encoding/decoding of GeoJSON `FeatureCollection`s (by [@IvanSanchez](https://github.com/IvanSanchez)), [#5045](https://github.com/Leaflet/Leaflet/issues/5045).
* Fix `minZoom`/`maxZoom` late inizialization (by [@IvanSanchez](https://github.com/IvanSanchez)), [#4916](https://github.com/Leaflet/Leaflet/pull/4916).
* Fix styling of custom SVG markers by making stricter CSS selectors (by [@jwoyame](https://github.com/jwoyame)) [#4597](https://github.com/Leaflet/Leaflet/pull/4597).
* Fix order of `mouseover`/`mouseout` events on overlapping `L.Canvas` layers (by [@perliedman](https://github.com/perliedman)), [#5090](https://github.com/Leaflet/Leaflet/pull/5090).
* Fix drag behaviour when a draggable marker is removed in mid-drag (by [@IvanSanchez](https://github.com/IvanSanchez), [#5063](https://github.com/Leaflet/Leaflet/pull/5063).
* Fix `L.Control.Layers.collapse()` on initially uncollapsed layer controls (by [@perliedman](https://github.com/perliedman)), [#5131](https://github.com/Leaflet/Leaflet/pull/5131).
* Fix blurriness of `L.Tooltip` by rounding up pixel coordinates (by [@ashmigelski](https://github.com/ashmigelski)), [#5089](https://github.com/Leaflet/Leaflet/pull/5089).
* Fix click events on overlapping geometries when using `L.Canvas` (by [@perliedman](https://github.com/perliedman)), [#5100](https://github.com/Leaflet/Leaflet/pull/5100).

### API changes

* Add a `sortLayers` option to `L.Control.Layers` (by [@IvanSanchez](https://github.com/IvanSanchez), [#4711](https://github.com/Leaflet/Leaflet/pull/4711).
* Implement `bringToFront` and `bringToBack` when using `L.Canvas`, plus preventing other canvas glitches (by [@perliedman](https://github.com/perliedman)), [#5115](https://github.com/Leaflet/Leaflet/pull/5115).
* Add `minNativeZoom` option to `L.TileLayer`s. (by [@bb-juliogarcia](https://github.com/bb-juliogarcia)), [#5088](https://github.com/Leaflet/Leaflet/pull/5088).

### Improvements

* Improve performance when adding lots of `L.Path`s by refactoring away event logic (by [@IvanSanchez](https://github.com/IvanSanchez)) [#5054](https://github.com/Leaflet/Leaflet/pull/5054))].
* Several minor documentation improvements by [@Jmuccigr](https://github.com/Jmuccigr), [@serdarkacka](https://github.com/serdarkacka), [@erickzhao](https://github.com/erickzhao), [@IvanSanchez](https://github.com/IvanSanchez), [@perliedman](https://github.com/perliedman), [@joukewitteveen](https://github.com/joukewitteveen).
* Code reorganization: Extensions for `L.Marker` and `L.Map` no longer have a separate file (by [@mourner](https://github.com/mourner)).
* Removed a duplicated unit test ([@yohanboniface](https://github.com/yohanboniface)).
* Accesibility improvements (ARIA/screenreader related) on map tiles (by [@patrickarlt](https://github.com/patrickarlt)) [#5092](https://github.com/Leaflet/Leaflet/pull/5092).

## 1.0.1 (2016-09-30)

### Bug fixes

* Fixed vector rendering regression in IE8 (by [@perliedman](https://github.com/perliedman)) [#4656](https://github.com/Leaflet/Leaflet/pull/4956).
* Fixed Webpack error when bundling Leaflet's CSS (by [@jefbarn](https://github.com/jefbarn)) [#4679](https://github.com/Leaflet/Leaflet/pull/4979).

## 1.0.0 (2016-09-26)

### API changes

* Remove deprecated `zoomanimated` option for `L.Popup`s (by [@fnicollet](https://github.com/fnicollet)) [#4699](https://github.com/Leaflet/Leaflet/pull/4699)

### Improvements

* Several minor fixes to the documentation (by [@IvanSanchez](https://github.com/IvanSanchez), [@alejo90](https://github.com/alejo90), [@ghybs](https://github.com/ghybs), [@JonasDralle](https://github.com/JonasDralle))
* Add license to `bower.json` (by [@anotherredward](https://github.com/anotherredward)) [#4865](https://github.com/Leaflet/Leaflet/pull/4865)
* Allow creating tooltips without a source layer (by [@yohanboniface](https://github.com/yohanboniface)) [#4836](https://github.com/Leaflet/Leaflet/pull/4836)
* Detect `L.Icon` default path using CSS (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4605](https://github.com/Leaflet/Leaflet/pull/4605)

### Bug fixes

* Fix handling of `getScaleZoom` in some custom CRSs (by [@theashyster](https://github.com/theashyster)) [#4919](https://github.com/Leaflet/Leaflet/pull/4919)
* Guard `L.Path` event handlers against race conditions (by [@perliedman](https://github.com/perliedman) and [@IvanSanchez](https://github.com/IvanSanchez)) [#4855](https://github.com/Leaflet/Leaflet/pull/4855) [#4929](https://github.com/Leaflet/Leaflet/pull/4929) [#4838](https://github.com/Leaflet/Leaflet/pull/4838)
* In `L.GridLayer`s, wrap `tileBounds` when `noWrap` is false (by [@fyeah](https://github.com/fyeah)) [#4908](https://github.com/Leaflet/Leaflet/pull/4908)
* Fix `L.Path`'s `bringToFront()` behaviour in the Edge browser (by [@nikolai-b](https://github.com/nikolai-b)) [#4848](https://github.com/Leaflet/Leaflet/pull/4848)
* Remove spurious counting of event handlers (by [@perliedman](https://github.com/perliedman)) [#4842](https://github.com/Leaflet/Leaflet/pull/4842)
* Throw error on `getCenter()` when a `L.Polygon` has no map and thus no CRS (by [@snkashis](https://github.com/snkashis)) [#4820](https://github.com/Leaflet/Leaflet/pull/4820)
* Add a `_leaflet_id` to map containers to prevent error when removing a map twice (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4810](https://github.com/Leaflet/Leaflet/pull/4810)
* Do not fail when closing a tooltip which is not in a map (by [@yohanboniface](https://github.com/yohanboniface)) [#4937](https://github.com/Leaflet/Leaflet/pull/4937)


## 1.0-rc3 (2016-08-05)

### API changes
- `L.Tooltip` `offset` option now defaults to `[0, 0]` (by [@yohanboniface](https://github.com/yohanboniface)) [#4773](https://github.com/Leaflet/Leaflet/pull/4773)
- Event listeners are now always called in the order they have been registered, while until rc2 listeners with a context were all called before listeners without context (even if registered later), and the listeners with context were called in an unpredictable order (by [@yohanboniface](https://github.com/yohanboniface)) [#4769](https://github.com/Leaflet/Leaflet/pull/4769)

### Improvements
- Added `oldLatLng` in `L.Marker` `drag` event (by [@snkashis](https://github.com/snkashis)) [#4752](https://github.com/Leaflet/Leaflet/pull/4752)

### Bug fixes
- Fixed regression where event listeners where not always fired in the order of registration (by [@yohanboniface](https://github.com/yohanboniface)) [#4769](https://github.com/Leaflet/Leaflet/pull/4769)
- Fixed `L.Tooltip` zoom animation (by [@yohanboniface](https://github.com/yohanboniface)) [#4744](https://github.com/Leaflet/Leaflet/pull/4744)
- Fixed `layer.bindTooltip` crashing when called before adding the layer to the map (by [@yohanboniface](https://github.com/yohanboniface)) [#4779](https://github.com/Leaflet/Leaflet/pull/4779)
- Fixed regression in `L.Popup` autopaning (by [@yohanboniface](https://github.com/yohanboniface)) [#4768](https://github.com/Leaflet/Leaflet/pull/4768)
- Fixed non permanent `L.Tooltip` not being closed on touch when touching the map (by [@yohanboniface](https://github.com/yohanboniface)) [#4767](https://github.com/Leaflet/Leaflet/pull/4767)
- Fixed `popupopen` and `popupclose` not being fired when clicking on path with an open popup (by [@yohanboniface](https://github.com/yohanboniface)) [#4788](https://github.com/Leaflet/Leaflet/pull/4788)


## 1.0-rc2 (2016-07-18)

### API changes
* Make `L.Handler.enable`/`disable` return `this` (by [@yohanboniface](https://github.com/yohanboniface)) [#4708](https://github.com/Leaflet/Leaflet/pull/4708)
* Icon `size` option can now be initialised with a number (by [@rheh](https://github.com/rheh)) [#4608](https://github.com/Leaflet/Leaflet/pull/4608)
* Add `classname` option to `L.GridLayer` (by [@jayvarner](https://github.com/jayvarner)) [#4553](https://github.com/Leaflet/Leaflet/pull/4553)
* Consistent returns for `Map.addLayer` (by [@nathancahill](https://github.com/nathancahill)) [#4504](https://github.com/Leaflet/Leaflet/pull/4504)
* Create points from objects with `x` and `y` properties (by [@nathancahill](https://github.com/nathancahill)) [#4465](https://github.com/Leaflet/Leaflet/pull/4465)
* Add `updateWhenZooming` option to `L.GridLayer` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4462](https://github.com/Leaflet/Leaflet/pull/4462)

### Improvements
* Refactoring of events (by [@fab1an](https://github.com/fab1an) and [@perliedman](https://github.com/perliedman)) [#4697](https://github.com/Leaflet/Leaflet/pull/4697)
* Do not alter `popup.options.offset` when computing popup offset (fix #4645) (by [@yohanboniface](https://github.com/yohanboniface)) [#4662](https://github.com/Leaflet/Leaflet/pull/4662)
* Use different `L.Bounds` for "marking as prunable" and loading tiles (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4650](https://github.com/Leaflet/Leaflet/pull/4650)
* Added `L.Tooltip` class to display small tooltips on the map (by [@yohanboniface](https://github.com/yohanboniface)) [#3952](https://github.com/Leaflet/Leaflet/pull/3952)

### Bug fixes
* Fixed `GridLayer`'s outer edge snapping to vertical center of map (fix #4702) (by [@yohanboniface](https://github.com/yohanboniface)) [#4704](https://github.com/Leaflet/Leaflet/pull/4704)
* Fixed scrollwheel zoom too fast in MS Edge (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4694](https://github.com/Leaflet/Leaflet/pull/4694)
* Use `pointer-events: visiblePainted` as fallback for IE <11 (by [@perliedman](https://github.com/perliedman)) [#4690](https://github.com/Leaflet/Leaflet/pull/4690)
* Avoid double borders on `abbr` in website (by [@brunob](https://github.com/brunob)) [#4663](https://github.com/Leaflet/Leaflet/pull/4663)
* Prevent firing map click when layer has popup (by [@jwoyame](https://github.com/jwoyame)) [#4603](https://github.com/Leaflet/Leaflet/pull/4603)
* Disable pointer events on popup tip (by [@jwoyame](https://github.com/jwoyame)) [#4599](https://github.com/Leaflet/Leaflet/pull/4599)
* Prevent `L.DomUtil.create()` from automatically setting a CSS class name (by [@MuellerMatthew](https://github.com/MuellerMatthew)) [#4563](https://github.com/Leaflet/Leaflet/pull/4563)
* Fix off-by-one bug in `Control.Layers._getLayer` (by [@ValentinH](https://github.com/ValentinH)) [#4561](https://github.com/Leaflet/Leaflet/pull/4561)
* Fix scrollwheel events zomming two levelz in Chrome by scaling down `getWheelDelta()` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4538](https://github.com/Leaflet/Leaflet/pull/4538)
* Prevent event listeners from being called when all listeners are removed (by [@perliedman](https://github.com/perliedman)) [#4555](https://github.com/Leaflet/Leaflet/pull/4555)
* Don't prevent browser's touch scroll and/or zoom unless handlers are enabled (by [@perliedman](https://github.com/perliedman)) [#4552](https://github.com/Leaflet/Leaflet/pull/4552)
* Fixed `getBoundsZoom` with small size and padding (by [@dianjin](https://github.com/dianjin)) [#4532](https://github.com/Leaflet/Leaflet/pull/4532)
* Fixed `L.Control.Layers` in IE8 (by [@jieter](https://github.com/jieter)) [#4509](https://github.com/Leaflet/Leaflet/pull/4509)
* Fixed `TileLayer`'s retina logic when `zoomReverse` is enabled. (by [@perliedman](https://github.com/perliedman)) [#4503](https://github.com/Leaflet/Leaflet/pull/4503)
* Fixed `setMaxBounds` not resetting `maxBounds` when passing `null` argument (by [@yohanboniface](https://github.com/yohanboniface)) [#4494](https://github.com/Leaflet/Leaflet/pull/4494)
* Fixed canvas not filtering click event after drag (by [@yohanboniface](https://github.com/yohanboniface)) [#4493](https://github.com/Leaflet/Leaflet/pull/4493)
* Fixed `L.Control.removeLayer()` raising an error when trying to remove a layer not yet added (by [@jieter](https://github.com/jieter)) [#4487](https://github.com/Leaflet/Leaflet/pull/4487)
* Fixed disabling drag on click in IE11 (by [@perliedman](https://github.com/perliedman)) [#4479](https://github.com/Leaflet/Leaflet/pull/4479)
* Fixed `L.Evented.listens()` on removed event handlers, #4474 (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4476](https://github.com/Leaflet/Leaflet/pull/4476)
* Better handling of `markerZoomAnimation` event hooks (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4460](https://github.com/Leaflet/Leaflet/pull/4460)


## 1.0-rc1 (2016-04-18)

### API changes
* Make `L.Control.Layers.collapse`/`expand` public methods (by [@yohanboniface](https://github.com/yohanboniface)) [#4370](https://github.com/Leaflet/Leaflet/pull/4370)
* Make `L.latLngBounds` factory return an empty bounds with no argument (by [@yohanboniface](https://github.com/yohanboniface)) [#4368](https://github.com/Leaflet/Leaflet/pull/4368)
* `Map.fitBounds` now raises an error if bounds are not valid (by [@theotow](https://github.com/theotow)) [#4353](https://github.com/Leaflet/Leaflet/pull/4353)
* Temporarily support legacy options on `L.Circle` (by [@JrFolk](https://github.com/JrFolk)) [#4290](https://github.com/Leaflet/Leaflet/pull/4290)
* Throw error on `NaN` circle radius (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4237](https://github.com/Leaflet/Leaflet/pull/4237)
* `L.Class.include()` & `mergeOptions()` now return `this` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4246](https://github.com/Leaflet/Leaflet/pull/4246)
* Consistent GeoJSON casing (by [@yohanboniface](https://github.com/yohanboniface)) [#4108](https://github.com/Leaflet/Leaflet/pull/4108)
* Move `L.LatLng.equals` to `L.CRS.equals`. (by [@perliedman](https://github.com/perliedman)) [#4074](https://github.com/Leaflet/Leaflet/pull/4074)
* Make non-interactive markers not firing pointer events (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3937](https://github.com/Leaflet/Leaflet/pull/3937)


### Improvements
* Give popups an id (by [@tylercubell](https://github.com/tylercubell)) [#4355](https://github.com/Leaflet/Leaflet/pull/4355)
* Support `{-y}` in tile layer urls (by [@jieter](https://github.com/jieter)) [#4337](https://github.com/Leaflet/Leaflet/pull/4337)
* Support `dashArray` path option in canvas (by [@gommo](https://github.com/gommo)) [#4173](https://github.com/Leaflet/Leaflet/pull/4173)
* Clean up `navigator.pointerEnabled` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4287](https://github.com/Leaflet/Leaflet/pull/4287)
* Use array in `L.Control.Layers` internally (by [@jieter](https://github.com/jieter)) [#4227](https://github.com/Leaflet/Leaflet/pull/4227)
* Implement `L.Browser.edge` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4143](https://github.com/Leaflet/Leaflet/pull/4143)
* Optimized icons (by [@vtduncan](https://github.com/vtduncan)) [#4124](https://github.com/Leaflet/Leaflet/pull/4124)
* Cast `L.DivIcon.bgPos` option to `L.Point` (by [@perliedman](https://github.com/perliedman)) [#4090](https://github.com/Leaflet/Leaflet/pull/4090)
* Switch to wheel event where available (by [@mourner](https://github.com/mourner)) [#3653](https://github.com/Leaflet/Leaflet/pull/3653)
* Fractional zoom controls (by [@IvanSanchez](https://github.com/IvanSanchez) and [@hyperknot](https://github.com/hyperknot)) [#3523](https://github.com/Leaflet/Leaflet/pull/3523)
* Added click tolerance also for non-touch devices (by [DavidUv](https://github.com/DavidUv)) [#4396](https://github.com/Leaflet/Leaflet/pull/4396)

### Bug fixes
* Fixed an edge case on `Map.fitBounds` (by [@perliedman](https://github.com/perliedman)) [#4377](https://github.com/Leaflet/Leaflet/pull/4377)
* Fixed an edge case bug in `flyTo` (by [@hyperknot](https://github.com/hyperknot)) [#4376](https://github.com/Leaflet/Leaflet/pull/4376)
* Use mean earth radius for distance calculation in `L.CRS.Earth`. (by [@perliedman](https://github.com/perliedman)) [#4369](https://github.com/Leaflet/Leaflet/pull/4369)
* Fixed zoom event fired twice (by [@perliedman](https://github.com/perliedman)) [#4367](https://github.com/Leaflet/Leaflet/pull/4367)
* Initialize canvas dash on init. Check that canvas supports `setLineDash`. (by [@perliedman](https://github.com/perliedman)) [#4364](https://github.com/Leaflet/Leaflet/pull/4364)
* Do not calculate inverted y coords for CRSes with infinite: true (by [@jieter](https://github.com/jieter)) [#4344](https://github.com/Leaflet/Leaflet/pull/4344)
* Fixed zoom handling on `Map.TouchZoom` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4340](https://github.com/Leaflet/Leaflet/pull/4340)
* Fixed `this._times.length` undefined in `Map.Drag.js` (by [@LucasMouraDeOliveira](https://github.com/LucasMouraDeOliveira)) [#4324](https://github.com/Leaflet/Leaflet/pull/4324)
* Fixed simulated click handling in `L.Path` (by [@elkami12](https://github.com/elkami12)) [#4314](https://github.com/Leaflet/Leaflet/pull/4314)
* Fixed attribution text not removed when Layer is removed from map (by [@dr-itz](https://github.com/dr-itz)) [#4293](https://github.com/Leaflet/Leaflet/pull/4293)
* Fixed bug when adding/removing a layer from `L.Control.Layer` that is not on the map (by [@errebenito](https://github.com/errebenito)) [#4280](https://github.com/Leaflet/Leaflet/pull/4280)
* Fixed `Map.attributionControl` only set on `addInitHook` (by [@snkashis](https://github.com/snkashis)) [#4263](https://github.com/Leaflet/Leaflet/pull/4263)
* Check for `e.originalEvent` in `DomUtil._filterclick` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4256](https://github.com/Leaflet/Leaflet/pull/4256)
* Stop drag propagation on `L.Draggable` (by [@turban](https://github.com/turban)) [#4250](https://github.com/Leaflet/Leaflet/pull/4250)
* Fixed error when quickly removing a layer just added (by [@hyperknot](https://github.com/hyperknot)) [#4244](https://github.com/Leaflet/Leaflet/pull/4244)
* Fixed not resetting properly on `Map.stop` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4229](https://github.com/Leaflet/Leaflet/pull/4229)
* Fixed conflict between `Map.fadeAnimation` and `GridLayer.opacity` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4228](https://github.com/Leaflet/Leaflet/pull/4228)
* Fix fractional zoom calculation (by [@hyperknot](https://github.com/hyperknot)) [#4224](https://github.com/Leaflet/Leaflet/pull/4224)
* Better cleanup of L.Control.Layers, fixes [#4213](https://github.com/Leaflet/Leaflet/pull/4213) (plus unit tests) (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4214](https://github.com/Leaflet/Leaflet/pull/4214)
* Fixed transform issue when not `L.Browser.any3d` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4212](https://github.com/Leaflet/Leaflet/pull/4212)
* Fixed fractional zoom controls broken when initial zoom isn't specified (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4209](https://github.com/Leaflet/Leaflet/pull/4209)
* Fix extra tiles usage (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4193](https://github.com/Leaflet/Leaflet/pull/4193)
* Sanity check: test `pxBounds` validity before using it (by [@yohanboniface](https://github.com/yohanboniface)) [#4191](https://github.com/Leaflet/Leaflet/pull/4191)
* Disable event defaults when disabling scroll propagation (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4160](https://github.com/Leaflet/Leaflet/pull/4160)
* Fixed precision issues in `L.Circle` radius (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4133](https://github.com/Leaflet/Leaflet/pull/4133)
* Workarounded some touch-capable browsers firing `dblclick` instead of touch events (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4131](https://github.com/Leaflet/Leaflet/pull/4131)
* Use all projected coords when calculating `L.Polyline`'s pixel bounds. (by [@perliedman](https://github.com/perliedman)) [#4114](https://github.com/Leaflet/Leaflet/pull/4114)
* Fixed removing all events when passing an `undefined` property (by [@robertleeplummerjr](https://github.com/robertleeplummerjr)) [#4113](https://github.com/Leaflet/Leaflet/pull/4113)
* Fixed retina URL computation (by [@hyperknot](https://github.com/hyperknot)) [#4110](https://github.com/Leaflet/Leaflet/pull/4110)
* Fire `tileunload` for all unloading of tiles (by [@tcoats](https://github.com/tcoats)) [#4099](https://github.com/Leaflet/Leaflet/pull/4099)
* Fixed duplicated code in `L.GridLayer.retainParent()` (by [@jblarsen](https://github.com/jblarsen)) [#4094](https://github.com/Leaflet/Leaflet/pull/4094)
* Make sure to always reset `_enforcingBounds`. (by [@perliedman](https://github.com/perliedman)) [#4089](https://github.com/Leaflet/Leaflet/pull/4089)
* Fix bug with max bounds and custom projections (by [@OleLaursen](https://github.com/OleLaursen)) [#4078](https://github.com/Leaflet/Leaflet/pull/4078)
* When limiting center to bounds, ignore offsets less than a pixel. (by [@perliedman](https://github.com/perliedman)) [#4077](https://github.com/Leaflet/Leaflet/pull/4077)
* Fixed bug for hover event between circle overlapping polygon on canvas (by [@fimietta](https://github.com/fimietta)) [#4072](https://github.com/Leaflet/Leaflet/pull/4072)
* Fixed but where `L.Control.Layers` where calling `map._size` instead of `getSize()` (by [@Brobin](https://github.com/Brobin)) [#4063](https://github.com/Leaflet/Leaflet/pull/4063)
* Round new map position before animating pan (by [@RLRR](https://github.com/RLRR)) [#4046](https://github.com/Leaflet/Leaflet/pull/4046)
* Fixed overlayed circles not responding to mouse events in canvas (by [@Deftwun](https://github.com/Deftwun)) [#4033](https://github.com/Leaflet/Leaflet/pull/4033)
* Fixed GeoJSON `resetStyle` (by [@yohanboniface](https://github.com/yohanboniface)) [#4028](https://github.com/Leaflet/Leaflet/pull/4028)
* Fixed popup toggle on marker click (by [@yohanboniface](https://github.com/yohanboniface)) [#4016](https://github.com/Leaflet/Leaflet/pull/4016)
* Fixed event target fallbacking to map after marker drag (fix [#3971](https://github.com/Leaflet/Leaflet/pull/3971)) (by [@yohanboniface](https://github.com/yohanboniface)) [#4010](https://github.com/Leaflet/Leaflet/pull/4010)
* Fixed `maxZoom` not honoring 0 (by [@simsibimsiwimsi](https://github.com/simsibimsiwimsi)) [#4000](https://github.com/Leaflet/Leaflet/pull/4000)
* Skip `L.GridLayer._updateLevels()` when out of min/max zoom (prevents IE8 exceptions) (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3999](https://github.com/Leaflet/Leaflet/pull/3999)
* `L.DomUtil.getPosition()` should return a fallback value (for VML in IE8) (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3998](https://github.com/Leaflet/Leaflet/pull/3998)
* `L.Marker`: init interaction regardless of new icon or not (by [@celadevra](https://github.com/celadevra)) [#3978](https://github.com/Leaflet/Leaflet/pull/3978)
* Fix `interactive=false` not taken into account for canvas (by [@yohanboniface](https://github.com/yohanboniface)) [#3956](https://github.com/Leaflet/Leaflet/pull/3956)
* Fix canvas path disappearing on animation (by [@klaftertief](https://github.com/klaftertief)) [#3950](https://github.com/Leaflet/Leaflet/pull/3950)
* Only check for moving draggable in canvas renderer when map is draggable (by [@klaftertief](https://github.com/klaftertief)) [#3942](https://github.com/Leaflet/Leaflet/pull/3942)
* Fix SVG Dragging issues in IE and Edge (by [@perliedman](https://github.com/perliedman)) [#4382](https://github.com/Leaflet/Leaflet/pull/4382)
* Fix click not working on inputs in controls in IE 11 (by [@perliedman](https://github.com/perliedman)) [#4371](https://github.com/Leaflet/Leaflet/pull/4371)
* Make drag and touch zoom handlers insensitive to order of event handlers (by [@perliedman](https://github.com/perliedman)) [#4387](https://github.com/Leaflet/Leaflet/pull/4387)

### Other
* Added a Code of Conduct (by [@mourner](https://github.com/mourner)) [#4142](https://github.com/Leaflet/Leaflet/pull/4142)
* Dual 1.0 & 0.7 docs to gh-pages (by [@IvanSanchez](https://github.com/IvanSanchez)) [#4085](https://github.com/Leaflet/Leaflet/pull/4085)
* 🍂doc (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3916](https://github.com/Leaflet/Leaflet/pull/3916)
* A lot of documentation improvements (by [@nathancahill](https://github.com/nathancahill)) [#4418](https://github.com/Leaflet/Leaflet/pull/4418), [#4419](https://github.com/Leaflet/Leaflet/pull/4419), [#4423](https://github.com/Leaflet/Leaflet/pull/4423), [#4425](https://github.com/Leaflet/Leaflet/pull/4425) and [a lot more](https://github.com/Leaflet/Leaflet/pulls?q=is%3Apr+author%3Anathancahill+is%3Aclosed)
* Replace links to google groups with ones to GIS StackExchange (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3886](https://github.com/Leaflet/Leaflet/pull/3886)


## 1.0-beta2 (2015-10-14)

Beta 2 fixes over 50 bugs that were reported by users trying out beta 1. The vast majority of changes are small fixes to problems that are triggered in very specific situations or conditions, a few API consolidation changes, and a few browser workarounds.

### API changes

* `L.circle` now accepts `radius` as an option (like `L.circleMarker`) rather than a second argument (by [@IvanSanchez](https://github.com/IvanSanchez))

### Improvements

* Implemented canvas optimizations on mousehover interactions (by [@philippelatulippe](https://github.com/philippelatulippe)) [#3076](https://github.com/Leaflet/Leaflet/issues/3076)
* Improved drag behaviour by preventing a `preclick` event during drag (by [@yohanboniface](https://github.com/yohanboniface)) [#3632](https://github.com/Leaflet/Leaflet/issues/3632)
* Implemented `L.ImageOverlay.setBounds()` and fixed image overlay initialization (by [@fminuti](https://github.com/fminuti)) [#3680](https://github.com/Leaflet/Leaflet/pull/3680)
* Implemented draggable items to fire `mousedown` events (by [@yohanboniface](https://github.com/yohanboniface)) [#3682](https://github.com/Leaflet/Leaflet/pull/3682)
* Changed detection of browsers capable of `msPointer` events (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3684](https://github.com/Leaflet/Leaflet/pull/3684)
* Implemented latitude truncation for spherical mercator projection (by [@perliedman](https://github.com/perliedman)) [#3700](https://github.com/Leaflet/Leaflet/issues/3700)
* Armored against browsers not implementing `Geolocation.clearWatch()` [#3707](https://github.com/Leaflet/Leaflet/issues/3707)
* Implemented generation of sourcemaps when building and minifying source files (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3723](https://github.com/Leaflet/Leaflet/pull/3723)
* Added `bringToFront` and `bringToBack` to popups (by [@danzel](https://github.com/danzel)). [#3908](https://github.com/Leaflet/Leaflet/pull/3908) [#3307](https://github.com/Leaflet/Leaflet/issues/3813)
* Multiply offset by 3 on keyboard pan when shift key is pressed (by [@yohanboniface](https://github.com/yohanboniface)) [#3921](https://github.com/Leaflet/Leaflet/pull/3921)

### Bug fixes

* Fixed event propagation on double finger tap (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3532](https://github.com/Leaflet/Leaflet/issues/3532)
* Fixed style changes on re-added layers (by [@wpf500](https://github.com/wpf500)) [#3547](https://github.com/Leaflet/Leaflet/pull/3547)
* Fixed `preventOutline` exceptions [#3625](https://github.com/Leaflet/Leaflet/issues/3625)
* Fixed a box zoom regression bug [#3633](https://github.com/Leaflet/Leaflet/issues/3633)
* Fixed `contextmenu` behaviour when there are no event listeners (by [@yohanboniface](https://github.com/yohanboniface)) [#3638](https://github.com/Leaflet/Leaflet/issues/3638)
* Fixed map controls not showing on top of map layers (by [@patrickarlt](https://github.com/patrickarlt)) [#3644](https://github.com/Leaflet/Leaflet/pull/3644)
* Fixed display of marker images with `max-width` (by [@davidjb](https://github.com/davidjb)) [#3647](https://github.com/Leaflet/Leaflet/pull/3647)
* Fixed `mouseout` and `mouseover` event bubbling (by [@yohanboniface](https://github.com/yohanboniface)) [#3648](https://github.com/Leaflet/Leaflet/issues/3648) [#3797](https://github.com/Leaflet/Leaflet/issues/3797) [#3708](https://github.com/Leaflet/Leaflet/issues/3708)
* Fixed a layer control bug when removing layers (by [@davidlukerice](https://github.com/davidlukerice)) [#3651](https://github.com/Leaflet/Leaflet/pull/3651)
* Fixed pan and zoom animations interacting with each other [#3355](https://github.com/Leaflet/Leaflet/issues/3355) [#3655](https://github.com/Leaflet/Leaflet/issues/3655)
* Fixed a regression bug in canvas renderer when removing layers [#3661](https://github.com/Leaflet/Leaflet/issues/3661)
* Remove a workaround for legacy Android 2 browsers [#2282](https://github.com/Leaflet/Leaflet/issues/2282)
* Fixed VML vector rendering in IE8 when removing and re-adding layers (by [@fminuti](https://github.com/fminuti)) [#2809](https://github.com/Leaflet/Leaflet/issues/2809)
* Fixed `flyTo` animations when the map center doesn't change (by [@fminuti](https://github.com/fminuti)) [#3663](https://github.com/Leaflet/Leaflet/pull/3663)
* Fixed fade animations for semitransparent tile layers (by [@w8r](https://github.com/w8r)) [#3671](https://github.com/Leaflet/Leaflet/pull/3671)
* Fixed behaviour of the `baselayerchange` event (by [@yohanboniface](https://github.com/yohanboniface)) [#3677](https://github.com/Leaflet/Leaflet/issues/3677)
* Fixed marker icon handling during a marker drag (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3687](https://github.com/Leaflet/Leaflet/issues/3687)
* Fixed a IE 11 map container visibility bug (by [@fminuti](https://github.com/fminuti)) [#2788](https://github.com/Leaflet/Leaflet/issues/2788)
* Prevented dragging interactions while a map zoom animation is running (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3692](https://github.com/Leaflet/Leaflet/issues/3692)
* Implement disabling layers in the layer control when they are unavailable at the current zoom level (by [@IvanSanchez](https://github.com/IvanSanchez)) [#252](https://github.com/Leaflet/Leaflet/issues/252)
* Refactored `L.Util.requestAnimFrame` definition (by [@fminuti](https://github.com/fminuti)) [#3703](https://github.com/Leaflet/Leaflet/issues/3703)
* Fixed an edge case of `L.Circle.getBounds()` (by [@knabar](https://github.com/knabar)) [#3776](https://github.com/Leaflet/Leaflet/pull/3776)
* Fixed `Rectangle.setBounds()` return value (by [@IvanSanchez](https://github.com/IvanSanchez)) https://github.com/Leaflet/Leaflet/commit/e698f641afadd4a0b412a6c9e065a6dbfbe16f44
* Fixed event firing order when opening a popup (by [@yohanboniface](https://github.com/yohanboniface)) [#3745](https://github.com/Leaflet/Leaflet/issues/3745)
* Fixed tile layer loading when dragging then immediately pinch-zooming the map (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3814](https://github.com/Leaflet/Leaflet/issues/3814)
* Work around browser limitations when panning the map too far away (by [@yohanboniface](https://github.com/yohanboniface) and [@IvanSanchez](https://github.com/IvanSanchez)) [#3608](https://github.com/Leaflet/Leaflet/issues/3608)
* Fixed popup text selection and touch events for IE 10 (by [@danzel](https://github.com/danzel)) [#3804](https://github.com/Leaflet/Leaflet/issues/3804)
* Fixed tile layer ordering when `maxZoom` is set (by [@patrickarlt](https://github.com/patrickarlt)) [#3721](https://github.com/Leaflet/Leaflet/issues/3721)
* Fixed scale behaviour on non-standard CRSs (by [@javimolla](https://github.com/patrickarlt), special thanks to [Your First PR](https://yourfirstpr.github.io/)) [#2990](https://github.com/Leaflet/Leaflet/issues/2990)
* Fixed rendering of off-screen vector layers (by [@yohanboniface](https://github.com/yohanboniface)) [#3836](https://github.com/Leaflet/Leaflet/issues/3836)
* Fixed rendering of intersecting vector layers (by [@yohanboniface](https://github.com/yohanboniface)) [#3583](https://github.com/Leaflet/Leaflet/issues/3583)
* Enforced stricter code linting
* Fixed disabled drag handlers not being able to be re-enabled (by [@yohanboniface](https://github.com/yohanboniface)) [#3825](https://github.com/Leaflet/Leaflet/issues/3825)
* Fixed panning outside the map bounds (by [@yohanboniface](https://github.com/yohanboniface)) [#3878](https://github.com/Leaflet/Leaflet/issues/3878)
* Worked around IE 11 not focusing the map using keyboard (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3772](https://github.com/Leaflet/Leaflet/issues/3772)
* Fixed vector layer positioning during a zoom animation in low zoom (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3769](https://github.com/Leaflet/Leaflet/issues/3769)
* Implemented `noWrap` option in `L.GridLayer` (by [@IvanSanchez](https://github.com/IvanSanchez)) [#3691](https://github.com/Leaflet/Leaflet/issues/3691)
* Fixed popups panning the map while running another pan animation (by [@yohanboniface](https://github.com/yohanboniface)) [#3744](https://github.com/Leaflet/Leaflet/issues/3744)
* Fixed uncorrect length of scale control due to CSS styles (by [@yohanboniface](https://github.com/yohanboniface)) [#3668](https://github.com/Leaflet/Leaflet/issues/3668)
* Fixed detection of default image path for icons (by [@ilfa](https://github.com/ilfa)) [#3770](https://github.com/Leaflet/Leaflet/pull/3770)
* Various Canvas events fixes (by [@yohanboniface](https://github.com/yohanboniface)) [#3917](https://github.com/Leaflet/Leaflet/pull/3917)
* Fix touch scroll in layers control (by [@yohanboniface](https://github.com/yohanboniface)) [#2882](https://github.com/Leaflet/Leaflet/issues/2882)
* Fix duration not passed through from setView to panBy (by [@yohanboniface](https://github.com/yohanboniface)) [#3300](https://github.com/Leaflet/Leaflet/issues/3300)


## 1.0-beta1 (2015-07-14)

The first beta of the huge, long-awaited Leaflet 1.0 release.

This version contains a lot of beneficial but potentially breaking changes (especially if you're a plugin author), so please read through the changes carefully if your code breaks after upgrading.

### Vectors API improvements

Leaflet vector layers rendering got a major rewrite, making it possible to switch between rendering backends (Canvas, SVG) dynamically (and even use both for different layers at the same time), have more than one physical pane for vector layers, significantly improving performance, adding Canvas retina support, getting rid of ugly hacks and generally making the code much cleaner. Main PR [#2290](https://github.com/Leaflet/Leaflet/pull/2290).

* Added `Renderer` layer (inherited by SVG/Canvas implementations) that handles renderer bounds and zoom animation.
* Added `SVG` & `Canvas` classes that now contain all renderer-specific code for vector layers and can be added as layers to the map.
* All vector layer classes (`Path`, `Polyline`, etc.) now don't contain any renderer-specific code and instead can be passed a renderer layer to use as `renderer` in options;
* Removed `MultiPolyline` and `MultiPolygon` classes since multiple rings are now handled by `Polyline` and `Polygon` classes respectively. Layers with multiple rings now perform much better (since each is now physically a single path object instead of being a `FeatureGroup` of layers).
* **Dramatically improved performance of interactive Canvas layers**. Mouse events work much faster (due to improved hit detection algorithms), and layers get updated many times faster (with partial redraws instead of redrawing the whole Canvas).
* **Dramatically improved performance of interactive SVG layers** (e.g. creating a big GeoJSON layer and adding to a map got 3x faster while taking 2.5x less memory). [#2240](https://github.com/Leaflet/Leaflet/issues/2240) [#2315](https://github.com/Leaflet/Leaflet/issues/2315)
* Added retina support for Canvas layers.
* Improved default vector layer styles.
* Added `Polyline` and `Polygon` `getCenter` for getting centroids.
* Respectively, improved `Polyline` and `Polygon` popup positioning when calling `openPopup`.
* Improved `Polyline`/`Polygon` `getBounds` to be cached (so it works much faster).
* Changed `Circle` to inherit from `CircleMarker` and not the other way.
* Fixed `GeoJSON` `resetStyle` to work properly in case `style` option wasn't set.
* Fixed a bug where map fired `moveend` when updating Canvas layers.
* Removed `Polyline` and `Polygon` `spliceLatLngs` method (just use `setLatLngs` instead).
* Changed `Polygon` `getLatLngs` to always return an array of rings (nested array) (by [@yohanboniface](https://github.com/yohanboniface)). [#2618](https://github.com/Leaflet/Leaflet/issues/2618) [#3386](https://github.com/Leaflet/Leaflet/pull/3386) [Leaflet/Leaflet#3279](https://github.com/Leaflet/Leaflet/pull/3279) [#2648](https://github.com/Leaflet/Leaflet/issues/2648)
* Added the ability to specify a custom pane for vector layers (making it possible to easily do stacks like vectors-tiles-vectors with proper z-index order) (by [@Jakobud](https://github.com/Jakobud)). [#3266](https://github.com/Leaflet/Leaflet/pull/3266) [#2786](https://github.com/Leaflet/Leaflet/pull/2786)
* Added vector layers `fillRule` option (by [@bullgare](https://github.com/bullgare)). [#2834](https://github.com/Leaflet/Leaflet/pull/2834)
* Removed `L_PREFER_CANVAS` global switch and added `Map` `preferCanvas` option instead (by [@yohanboniface](https://github.com/yohanboniface)). [#3623](https://github.com/Leaflet/Leaflet/pull/3623)

### Layers API improvements

All Leaflet layers (including markers, popups, tile and vector layers) have been refactored to have a common parent, `Layer` class, that shares the basic logic of adding and removing. The leads to the following changes (main PR [#2266](https://github.com/Leaflet/Leaflet/pull/2266)):

* Added `Layer` class which all layers added to a map should inherit from.
* Added `add` and `remove` events to all layers.
* Added `remove` method to layers and controls (`marker.remove()` is now equivalent to `map.removeLayer(marker)`).
* Improved performance of adding and removing layers.
* Added `pane` option to all layers that can be changed (e.g. you can set `pane: 'overlayPane'` to a tile layer).
* Added `map` `createPane` method for custom panes. [#1742](https://github.com/Leaflet/Leaflet/issues/1742)
* Simplified map panes &mdash; removed `objectsPane`, all panes are on the same level now.
* Added `shadowPane` option to markers as well.
* Added `getEvents` method to all layers that returns an `{event: listener, ...}` hash; layers now manage its listeners automatically without having to do this in `onAdd`/`onRemove`.
* Added `togglePopup`, `setPopupContent`, `getPopup`, `isPopupOpen` methods to all layers. [#2279](https://github.com/Leaflet/Leaflet/issues/2279) [#2292](https://github.com/Leaflet/Leaflet/issues/2292)
* Improved performance of adding/removing layers with layers control present (instead of listening to any layer add/remove, the control only listens to layers added in configuration).
* Fixed `FeatureGroup` `getBounds` to work correctly when containing circle markers.
* Removed `Map` `tilelayersload` event.
* Removed `Popup` `open` and `close` events in favor of `add` and `remove` for consistency.
* Moved all layer-related logic in `Map.js` to `Layer.js`.
* Improved `FeatureGroup` `bindPopup` to accept a function for generating popup content, significantly improving memory footprint when adding popups to a huge number of layers (by [@patrickarlt](https://github.com/patrickarlt)). [#3109](https://github.com/Leaflet/Leaflet/pull/3109) [#3059](https://github.com/Leaflet/Leaflet/pull/3059)
* Added `ImageOverlay` interactivity (mouse events, etc.) (by [@snkashis](https://github.com/snkashis)). [#3009](https://github.com/Leaflet/Leaflet/pull/3009) [#1727](https://github.com/Leaflet/Leaflet/issues/1727)
* Added `ImageOverlay` `getBounds` (by [@brunob](https://github.com/brunob)). [#2848](https://github.com/Leaflet/Leaflet/pull/2848)
* Renamed `clickable` option to `interactive` (by [@AndriiHeonia](https://github.com/AndriiHeonia)). [#2838](https://github.com/Leaflet/Leaflet/pull/2838) [#2499](https://github.com/Leaflet/Leaflet/issues/2499)
* Changed the default z-index of panes to be bigger, leaving more room for customization (by [@patrickarlt](https://github.com/patrickarlt)). [#3591](https://github.com/Leaflet/Leaflet/pull/3591)
* Improved DOM event bubbling mechanism for layers (by [@yohanboniface](https://github.com/yohanboniface)). [Leaflet/Leaflet#3307](https://github.com/Leaflet/Leaflet/pull/3307) [#3450](https://github.com/Leaflet/Leaflet/pull/3450) [#3307](https://github.com/Leaflet/Leaflet/pull/3307)
* Added `nonBubblingEvents` option to layers (by [@yohanboniface](https://github.com/yohanboniface)). [#3605](https://github.com/Leaflet/Leaflet/pull/3605) [#3307](https://github.com/Leaflet/Leaflet/pull/3307) [#3604](https://github.com/Leaflet/Leaflet/issues/3604)

In addition, layer events implementation was rewritten to use **event delegation**, significantly improving add/remove performance and memory footprint. [#3032](https://github.com/Leaflet/Leaflet/pull/3032) [#46](https://github.com/Leaflet/Leaflet/issues/46)

### TileLayer & Projections API improvements

TileLayer code and everything projections-related has undergone a major refactoring, documented in PR [#2247](https://github.com/Leaflet/Leaflet/pull/2247). It includes the following changes (in addition to much cleaner and simpler code):

#### TileLayer API improvements

These changes make implementing custom grid-like layers for Leaflet much easier.

* Moved most of the `TileLayer` logic into the new `GridLayer` class (which `TileLayer` now inherits, extending it with logic specific to tile servers).
* Removed `TileLayer.Canvas` in favor of the much more flexible and powerful `GridLayer`.
* Improved tile wrapping and bounding logic in `TileLayer` to work transparently and completely depent on the CRS used; removed the need for `TileLayer` hacks when using custom projections.
* Added non-square tiles support (by [@IvanSanchez](https://github.com/IvanSanchez)). [#3573](https://github.com/Leaflet/Leaflet/pull/3573) [#3570](https://github.com/Leaflet/Leaflet/issues/3570)
* Removed `url` property in `tileload` and `tileloadstart` events (get it through `tile.src`).

#### Projections API improvements

These changes were targeted at removing any hardcoded projection-specific logic accross Leaflet classes, making it transparent and driven by the chosen CRS. They make using Leaflet with custom projections (including flat maps) much easier, and remove the need for ugly hacks in the [Proj4Leaflet](https://github.com/kartena/Proj4Leaflet) plugin.

* Added `CRS.Earth` which serves as a base for all Earth-based CRS (`EPSG3857` etc.). [#2345](https://github.com/Leaflet/Leaflet/pull/2345)
* Added `Projection` `bounds` property that defines bounds for different projections (`Mercator`, etc.) in projected coordinates (by [@perliedman](https://github.com/perliedman)).
* Added `CRS` `wrapLat` and `wrapLng` properties which define whether the world wraps on a given axis and in what range. Set as `[-180, 180]` for `EPSG:3857`, `EPSG:4326`, `EPSG:3395` by default.
* Added `CRS` and `Map` `wrapLatLng` (the latter depends on the chosen CRS).
* Added `CRS` `infinite` property that disables boundaries (the world can go on infinitely in any direction), default for `CRS.Simple`.
* Added `CRS` `getProjectedBounds` and `Map` `getPixelWorldBounds` methods that returns world bounds in projected coordinates depending on zoom (derived from `Projection` `bounds`) (by [@perliedman](https://github.com/perliedman)).
* Added `CRS` `unproject` method that converts coordinates in CRS-dependent units into `LatLng` coordinates (by [@sowelie](https://github.com/sowelie)).
* Added `Map` `distance(latlng1, latlng2)` method that takes CRS into account and works with flat projections.  [#2345](https://github.com/Leaflet/Leaflet/pull/2345) [#1442](https://github.com/Leaflet/Leaflet/issues/1442)
* Improved `Circle` to be approximated with an ellipse in Earth-based projections. [#2345](https://github.com/Leaflet/Leaflet/pull/2345)
* Fixed `EPSG:4326` to have correct tile pyramid (2x1 tiles at root).
* Fixed `Projection.SphericalMercator` to project to meter units (by [@calvinmetcalf](https://github.com/calvinmetcalf)).
* Fixed `Map` `worldCopyJump` option to work for other projections.
* Fixed `Circle` to work with flat projections. [#2345](https://github.com/Leaflet/Leaflet/pull/2345) [#1465](https://github.com/Leaflet/Leaflet/issues/1465)
* Fixed scale control precision in non-EPSG:3857 projections. [#2345](https://github.com/Leaflet/Leaflet/pull/2345)
* Fixed `ImageOverlay` not working properly in some non-standard projections. [#3011](https://github.com/Leaflet/Leaflet/issues/3011)


### Animations improvements and fractional zoom

Animation code in Leaflet had undergone a major rewrite (main PR: [#2382](https://github.com/Leaflet/Leaflet/pull/2382)), bringing improvements such as:

- Multi-level tile buffering for more seamless zooming experience with less flickering
- Optimal path animation (`map.flyTo`) for zooming to a particular place in a curve (simultaneously zooming and panning)
- Fractional zoom support &mdash; now you can do things like `map.setZoom(12.45)` and it just works.
- Layers now rely on `zoom` event in addition to `viewreset` for frame-by-frame zoom animations. [#3278](https://github.com/Leaflet/Leaflet/pull/3278)

### UX improvements

* Improved panning inertia behavior so that there are no tearing during animation when panning around quickly. [#2360](https://github.com/Leaflet/Leaflet/issues/2360)
* Improved inertial scrolling to have a nicer, more natural feel (by [@RickMohr](https://github.com/RickMohr)). [Leaflet/Leaflet#3063](https://github.com/Leaflet/Leaflet/pull/3063) [#3063](https://github.com/Leaflet/Leaflet/pull/3063) [#3062](https://github.com/Leaflet/Leaflet/issues/3062) [#2987](https://github.com/Leaflet/Leaflet/issues/2987)
* Added popup fade out animation.
* Improved keyboard support to ignore keystrokes with modifier keys (Ctrl, Alt, Meta) to not interfere with OS shortcuts.
* Made popup to close when pressing Escape (by [@snkashis](https://github.com/snkashis)). [#951](https://github.com/Leaflet/Leaflet/issues/951) [#3000](https://github.com/Leaflet/Leaflet/pull/3000)
* Improved keyboard zoom to zoom by 3 levels if shift key is pressed (by [@yohanboniface](https://github.com/yohanboniface)). [#3024](https://github.com/Leaflet/Leaflet/pull/3024)
* Improved layers control to become scrollable when there are too many layers (by [@rowanwins](https://github.com/rowanwins)). [#3571](https://github.com/Leaflet/Leaflet/pull/3571) [#3167](https://github.com/Leaflet/Leaflet/issues/3167)

### Misc. performance improvements

* Significantly [improved](http://jsperf.com/leaflet-parsefloat-in-latlng/2) `LatLng` creation performance (8x).
* Improved performance of layer objects construction.
* Significantly improved `FeatureGroup` (and correspondingly `GeoJSON`) layer adding and events performance (about 10x) by implementing a much better event propagation mechanism. [#2311](https://github.com/Leaflet/Leaflet/pull/2311)
* Improved Leaflet events and DOM events memory footprint.
* Improved `Evented` `off` performance by about 2 times.

### Other breaking API changes

* Changed `DomUtil` `off` to require `context` attribute if you remove a listener that was previously added with a particular context.
* Removed `DomUtil.getViewportOffset` method as it is no longer necessary.
* Removed `DomUtil` `getTranslateString` and `getScaleString` methods.
* Removed `DomUtil` `documentIsLtr` method.
* Removed `LatLng` `RAD_TO_DEG`, `DEG_TO_RAD` and `MAX_MARGIN` constants.
* Renamed `Util.limitExecByInterval` to `Util.throttle`.

### Other API improvements

* Added `Evented` class that now many Leaflet classes inherit from (instead of mixing in events methods in each class), while keeping the old `includes: L.Mixin.Events` syntax available. [#2310](https://github.com/Leaflet/Leaflet/pull/2310)
* Improved `Class` `options` to be prototypically inherited instead of copied over in children classes, which leads to more efficient memory use, faster object construction times and ability to change parent options that get propagated to all children automatically (by [@jfirebaugh](https://github.com/jfirebaugh)). [#2300](https://github.com/Leaflet/Leaflet/pull/2300) [#2294](https://github.com/Leaflet/Leaflet/issues/2294)
* Added `{r}` variable to `TileLayer` `url` for adding `"@2x"` prefix on Retina-enabled devices (by [@urbaniak](https://github.com/urbaniak)). [#2296](https://github.com/Leaflet/Leaflet/pull/2296)
* Added `Point` `ceil` method (by [@perliedman](https://github.com/perliedman)).
* Added `Util.wrapNum` method for wrapping a number to lie in a certain range.
* Improved `L.bind` to use native `Function` `bind` on modern browsers and prepend real arguments to bound ones.
* Added `LatLng` `equals` second argument `maxMargin`.
* Added `DomUtil` `setClass` and `getClass` methods.
* Improved `Marker` `move` event to include `oldLatlng` (by [@danzel](https://github.com/danzel)). [#2412](https://github.com/Leaflet/Leaflet/pull/2412)
* Added `Marker` `mousemove` event (by [@bullgare](https://github.com/bullgare)). [#2798](https://github.com/Leaflet/Leaflet/pull/2798)
* Improved `DomEvent` `on`/`off` to accept space-separated events and object literals (`{type: fn}`).
* Added `DomUtil` `toFront` and `toBack` methods.
* Added `Evented` `listens` as a shortcut to `hasEventListeners`.
* Added optional support for center-oriented scroll for `L.map` option `touchZoom` (by [@mtmail](https://github.com/mtmail)). [#2527](https://github.com/Leaflet/Leaflet/pull/2527)
* Added `getElement` method to all layers that returns an associated DOM element.
* Added `LatLng` `clone` method (by [@yohanboniface](https://github.com/yohanboniface)). [#3390](https://github.com/Leaflet/Leaflet/pull/3390)
* Added `Map` `setMinZoom` and `setMaxZoom` methods (by [@nathancahill](https://github.com/nathancahill)). [#3383](https://github.com/Leaflet/Leaflet/pull/3383) [#3380](https://github.com/Leaflet/Leaflet/issues/3380)
* Added `originalEvent` to `Map` and `Marker` `drag` and `move` event data (by [@yohanboniface](https://github.com/yohanboniface)). [#3264](https://github.com/Leaflet/Leaflet/pull/3264)
* Added `Popup` `autoClose` option (by [@jfirebaugh](https://github.com/jfirebaugh)). [#3018](https://github.com/Leaflet/Leaflet/pull/3018) [#2716](https://github.com/Leaflet/Leaflet/issues/2716) [#1853](https://github.com/Leaflet/Leaflet/issues/1853)
* Added `Control.Zoom` `enable` and `disable` methods. [#3172](https://github.com/Leaflet/Leaflet/issues/3172)
* Added an argument to `L.PolyUtil.clipPolygon` that controls rounding (by [@aparshin](https://github.com/aparshin)). [#2926](https://github.com/Leaflet/Leaflet/pull/2926) [#2917](https://github.com/Leaflet/Leaflet/issues/2917)
* Added `Map` `wheelDebounceTime` option (by [@AndriiHeonia](https://github.com/AndriiHeonia)). [#2836](https://github.com/Leaflet/Leaflet/pull/2836) [#2501](https://github.com/Leaflet/Leaflet/issues/2501)
* Added `TileLayer.WMS` `uppercase` option (now `false` by default) (by [@kdeloach](https://github.com/kdeloach)). [#2831](https://github.com/Leaflet/Leaflet/pull/2831) [#1751](https://github.com/Leaflet/Leaflet/issues/1751)
* Added `ImageOverlay` `alt` option (by [@francis-liberty](https://github.com/francis-liberty)). [#2767](https://github.com/Leaflet/Leaflet/pull/2767) [#2564](https://github.com/Leaflet/Leaflet/issues/2564)
* Improved `L.Util.extend` performance (by [@fab1an](https://github.com/fab1an)). [#2746](https://github.com/Leaflet/Leaflet/pull/2746)
* Added `Map` `stop` method for stopping panning or `flyTo` animation.
* Added `Map` `maxBoundsViscosity` option that controls how much the map resits dragging out of max bounds (set to `1` for a hard limit) (by [@IvanSanchez](https://github.com/IvanSanchez)). [#2224](https://github.com/Leaflet/Leaflet/pull/2224) [#3510](https://github.com/Leaflet/Leaflet/pull/3510) [#1673](https://github.com/Leaflet/Leaflet/issues/1673)
* Added `Bounds` and `LatLngBounds` `overlaps` method (by [@IvanSanchez](https://github.com/IvanSanchez)). [#2981](https://github.com/Leaflet/Leaflet/issues/2981) [#3508](https://github.com/Leaflet/Leaflet/pull/3508)
* Added `ImageOverlay` `crossOrigin` option (by [@patrickarlt](https://github.com/patrickarlt)). [#3594](https://github.com/Leaflet/Leaflet/pull/3594) [#2621](https://github.com/Leaflet/Leaflet/pull/2621)

### Bugfixes

* Fixed `DomUtil` `on` to make it possible to add the same listener to the same element for multiple contexts.
* Fixed a bug that thowed an error when attempting to reinitialize the map on unload (by [@gamb](https://github.com/gamb)). [#2410](https://github.com/Leaflet/Leaflet/pull/2410)
* Fixed excessively blurry non-retina tiles on retina iOS devices.
* Fixed a bug with popup close button in IE7/8. [#2351](https://github.com/Leaflet/Leaflet/issues/2351)
* Fixed `ImageOverlay` mercator distortion on lower zoom levels.
* Fixed a bug where layers didn't fire `popupopen` and `popupclose` events when manually creating a popup object and passing it to `bindPopup`. [#2354](https://github.com/Leaflet/Leaflet/issues/2354)
* Fixed box-zoom overlay appearing under markers. [#1813](https://github.com/Leaflet/Leaflet/issues/1813)
* Fixed `Map` `panInsideBounds` to accept array-form bounds (by [@RLRR](https://github.com/RLRR)). [#3489](https://github.com/Leaflet/Leaflet/pull/3489)
* Fixed marker draggable state to persist when removing and adding back to the map (by [@IvanSanchez](https://github.com/IvanSanchez)). [#3488](https://github.com/Leaflet/Leaflet/pull/3488)
* Fixed inertia not working when parallel to axis (by [@rikvanmechelen](https://github.com/rikvanmechelen)).  [#3432](https://github.com/Leaflet/Leaflet/issues/3432)
* Fixed images and SVG inside popups having max-width property overriden (by [@yohanboniface](https://github.com/yohanboniface)). [#3452](https://github.com/Leaflet/Leaflet/pull/3452)
* Fixed cursors when dragging is disabled (by [@juliensoret](https://github.com/juliensoret)). [#3219](https://github.com/Leaflet/Leaflet/issues/3219) [#3233](https://github.com/Leaflet/Leaflet/pull/3233)
* Fixed `LatLng` `wrap` to not drop altitude (by [@IvanSanchez](https://github.com/IvanSanchez)).  [#3420](https://github.com/Leaflet/Leaflet/issues/3420)
* Fixed Firefox for Android not being detected as mobile (by [@IvanSanchez](https://github.com/IvanSanchez)). [#3419](https://github.com/Leaflet/Leaflet/pull/3419)
* Fixed an infinite loop when calling `setMaxBounds` several times in a row (by [@IvanSanchez](https://github.com/IvanSanchez)). [#3410](https://github.com/Leaflet/Leaflet/pull/3410) [#3320](https://github.com/Leaflet/Leaflet/issues/3320)
* Fixed a WTF `Map` `locate` bug that could cause some unexpected effects (by [@sindre](https://github.com/sindre)).  [Leaflet/Leaflet#3404](https://github.com/Leaflet/Leaflet/issues/3404)
* Fixed broken zoom in Project Spartan browsers (by [@mitchless](https://github.com/mitchless)). [#3379](https://github.com/Leaflet/Leaflet/pull/3379)
* Fixed broken `Polygon` `getCenter` when all points <area></area> in the same pixel (by [@yohanboniface](https://github.com/yohanboniface)). [#3372](https://github.com/Leaflet/Leaflet/pull/3372)
* Fixed broken `Polyline` `getCenter` when the line is very small (by [@yohanboniface](https://github.com/yohanboniface)). [#3371](https://github.com/Leaflet/Leaflet/pull/3371)
* Fixed keyboard zoom out not working on `azerty` keyboards. [#3362](https://github.com/Leaflet/Leaflet/issues/3362)
* Fixed a bug where tabbing to an offscreen marker broke control positioning (by [@IvanSanchez](https://github.com/IvanSanchez)). [#3340](https://github.com/Leaflet/Leaflet/pull/3340) [#3333](https://github.com/Leaflet/Leaflet/issues/3333)
* Fixed `Map` `panBy` not always returning `this` (by [@Trufi](https://github.com/Trufi)). [#3303](https://github.com/Leaflet/Leaflet/pull/3303)
* Fixed a bug where pushing a zoom control with a keyboard would switch focus to the map (by [@Jakobud](https://github.com/Jakobud)). [#3275](https://github.com/Leaflet/Leaflet/pull/3275) [#3159](https://github.com/Leaflet/Leaflet/issues/3159)
* Fixed more race conditions leading to map freeze. [#3270](https://github.com/Leaflet/Leaflet/pull/3270) [#3268](https://github.com/Leaflet/Leaflet/issues/3268) [#2693](https://github.com/Leaflet/Leaflet/issues/2693) [#2478](https://github.com/Leaflet/Leaflet/issues/2478)
* Fixed iOS race condition when doing a very small pan. [#2519](https://github.com/Leaflet/Leaflet/issues/2519)
* Fixed `Polygon` `toGeoJSON` exporting a `MultiPolygon` in some cases (by [@yohanboniface](https://github.com/yohanboniface)). [#2977](https://github.com/Leaflet/Leaflet/pull/2977)
* Fixed `TileLayer.WMS` passing all options as WMS params. [#2972](https://github.com/Leaflet/Leaflet/issues/2972)
* Fixed a race condition that made `map.fitBounds(map.getBounds())` zoom out sometimes. [#2957](https://github.com/Leaflet/Leaflet/issues/2957)
* Fixed a bug where a draggable marker stopped being draggable after `setIcon` (by [@jeffsmale90](https://github.com/jeffsmale90)). [#2578](https://github.com/Leaflet/Leaflet/issues/2578)
* Fixed some IE11 touch performance and stability issues (by [@danzel](https://github.com/danzel)). [#3007](https://github.com/Leaflet/Leaflet/pull/3007) [#2820](https://github.com/Leaflet/Leaflet/issues/2820)
* Fixed a race condition with `TileLayer` when `maxNativeZoom = 0`. [#3004](https://github.com/Leaflet/Leaflet/issues/3004)
* Fixed `FeatureGroup` `setStyle` not affecting `ImageOverlay` `opacity` (by [@opie](https://github.com/opie)). [#3008](https://github.com/Leaflet/Leaflet/pull/3008) [#2246](https://github.com/Leaflet/Leaflet/issues/2246)
* Fixed class init hooks not being called for parent classes (by [@jfirebaugh](https://github.com/jfirebaugh)).  [#2545](https://github.com/Leaflet/Leaflet/issues/2545)
* Fixed a bug when adding a control that's already added or removing a control that's not present (by [@jfirebaugh](https://github.com/jfirebaugh)). [#3020](https://github.com/Leaflet/Leaflet/issues/3020) [#2877](https://github.com/Leaflet/Leaflet/issues/2877)
* Fixed buggy inertia on low zoom levels when `Map` `worldCopyJump` option is enabled (by [@flemenach](https://github.com/flemenach)). [#3038](https://github.com/Leaflet/Leaflet/pull/3038) [#2624](https://github.com/Leaflet/Leaflet/issues/2624)
* Fixed a bug where `getMaxZoom` sometimes returned wrong result inside a `Control.Layers` `baselayerchange` event (by [@CloudNiner](https://github.com/CloudNiner)). [#3048](https://github.com/Leaflet/Leaflet/pull/3048) [#2318](https://github.com/Leaflet/Leaflet/issues/2318)
* Fixed a bug where during zooming one map, dragging was disabled on all other maps on the page (by [@kdeloach](https://github.com/kdeloach)). [#3050](https://github.com/Leaflet/Leaflet/pull/3050) [#2539](https://github.com/Leaflet/Leaflet/issues/2539)
* Fixed a `Map` `getSize` race condition where it could return a wrong result (by [@kshepard](https://github.com/kshepard)). [#3052](https://github.com/Leaflet/Leaflet/pull/3052) [#3031](https://github.com/Leaflet/Leaflet/issues/3031)
* Fixed `L.latLng` factory to accept `altitude` as a third argument too (by [@lonelyelk](https://github.com/lonelyelk)). [#3070](https://github.com/Leaflet/Leaflet/pull/3070).
* Fixed `L.latLng` factory to not throw error on empty array input (by [@lonelyelk](https://github.com/lonelyelk)). [#3080](https://github.com/Leaflet/Leaflet/pull/3080) [#3079](https://github.com/Leaflet/Leaflet/issues/3079)
* Fixed popups to have a default color (by [@snkashis](https://github.com/snkashis)). [#3115](https://github.com/Leaflet/Leaflet/pull/3115) [#3112](https://github.com/Leaflet/Leaflet/issues/3112) [#333](https://github.com/Leaflet/Leaflet/issues/333)
* Fixed `Map` `locate` not to mutate the given options object (by [@tmcw](https://github.com/tmcw)). [#3173](https://github.com/Leaflet/Leaflet/pull/3173)
* Fixed Canvas polylines not to render if stroke is set to 0 (by [@optical](https://github.com/optical)). [#3203](https://github.com/Leaflet/Leaflet/pull/3203)
* Prevented a Joomla bug that could lead to vector layers disappearing (by [@SniperSister](https://github.com/SniperSister)). [#2886](https://github.com/Leaflet/Leaflet/pull/2886) [#2881](https://github.com/Leaflet/Leaflet/issues/2881) [Leaflet/Leaflet#2881](https://github.com/Leaflet/Leaflet/issues/2881)
* Fixed IE Metro touch events passing through objects on top of a Leaflet map (by [@nikgavalas](https://github.com/nikgavalas)). [#2954](https://github.com/Leaflet/Leaflet/pull/2954)
* Fixed a bug where vector layers wouldn't display on websites with SVG max-width set to 100% (by [@SniperSister](https://github.com/SniperSister)). [#2886](https://github.com/Leaflet/Leaflet/pull/2886) [#2881](https://github.com/Leaflet/Leaflet/issues/2881)
* Fixed `Marker` `setIcon` to not reset popup anchor offset (by [@bullgare](https://github.com/bullgare)). [#2872](https://github.com/Leaflet/Leaflet/pull/2872)
* Fixed a case where you provide `zoom` in `Map` options and then set center (by [@AndriiHeonia](https://github.com/AndriiHeonia)). [#2849](https://github.com/Leaflet/Leaflet/pull/2849) [#1871](https://github.com/Leaflet/Leaflet/issues/1871)
* Fixed a race condition with `TileLayer` `setUrl` where `loading` event didn't fire properly (by [@bennlich](https://github.com/bennlich)). [#2802](https://github.com/Leaflet/Leaflet/pull/2802) [#2675](https://github.com/Leaflet/Leaflet/issues/2675) [#2827](https://github.com/Leaflet/Leaflet/pull/2827)
* Fixed a bug where a tile layer was not cleaned up properly after zooming past its max zoom (by [@francis-liberty](https://github.com/francis-liberty)). [#2764](https://github.com/Leaflet/Leaflet/pull/2764) [#1905](https://github.com/Leaflet/Leaflet/issues/1905)
* Fixed a memory leak with `Marker` `setIcon` (by [@jfgodoy](https://github.com/jfgodoy)). [#2811](https://github.com/Leaflet/Leaflet/pull/2811)
* Fixed `LatLng` `distanceTo` to not return `NaN` on equal locations.  [#2705](https://github.com/Leaflet/Leaflet/issues/2705)
* Fixed a bug where `TileLayer` `maxNativeZoom` didn't work properly with `bounds` option set (by [@mlegenhausen](https://github.com/mlegenhausen)). [#2725](https://github.com/Leaflet/Leaflet/pull/2725) [#2704](https://github.com/Leaflet/Leaflet/issues/2704)
* Fixed a bug where tiles touching the edge of the bounds from outside where loaded (by [@IvanSanchez](https://github.com/IvanSanchez)). [#2981](https://github.com/Leaflet/Leaflet/issues/2981) [#3508](https://github.com/Leaflet/Leaflet/pull/3508)
* Fixed a memory leak in `map.remove()` (by [@IvanSanchez](https://github.com/IvanSanchez)). [#3514](https://github.com/Leaflet/Leaflet/pull/3514) [#2718](https://github.com/Leaflet/Leaflet/issues/2718)
* Fixed a bug where layers control collapsed when hovering over a disabled radio button (by [@rowanwins](https://github.com/rowanwins)). [#3564](https://github.com/Leaflet/Leaflet/pull/3564) [#2771](https://github.com/Leaflet/Leaflet/issues/2771) [Leaflet#2771](https://github.com/Leaflet/Leaflet/issues/2771)
* Fixed GeoJSON not accepting null geometry (by [@pglotov](https://github.com/pglotov)). [#3585](https://github.com/Leaflet/Leaflet/pull/3585)
* Fixed occasional popup 1px horizontal offset (by [@patrickarlt](https://github.com/patrickarlt)). [#3587](https://github.com/Leaflet/Leaflet/pull/3587) [#3526](https://github.com/Leaflet/Leaflet/pull/3526) [#3586](https://github.com/Leaflet/Leaflet/issues/3586) [#3525](https://github.com/Leaflet/Leaflet/issues/3525)
* Fixed some inconsistencies in mouse events for Canvas vector layers (by [@wpf500](https://github.com/wpf500)). [#3590](https://github.com/Leaflet/Leaflet/pull/3590) [#3568](https://github.com/Leaflet/Leaflet/issues/3568) [#3618](https://github.com/Leaflet/Leaflet/pull/3618)
* Fixed scale control for non-earth CRS (by [@cmulders](https://github.com/cmulders)). [#3614](https://github.com/Leaflet/Leaflet/pull/3614)

### Misc improvements

* Improved the build system (`jake build`) to report gzipped library size.
* Added version name and commit number to Leaflet builds. [#2276](https://github.com/Leaflet/Leaflet/issues/2276)
* Added Leaflet logo in vector format as `src/images/logo.svg`.
* Added reference to Leaflet CSS in `package.json` (by [@bclinkinbeard](https://github.com/bclinkinbeard)). [#2432](https://github.com/Leaflet/Leaflet/pull/2432)
* Switched from JSHint to ESLint for checking code style and made the checks more strict. [#3176](https://github.com/Leaflet/Leaflet/pull/3176)
* Added a plugin guide section on module loaders and publishing plugins (by [@patrickarlt](https://github.com/patrickarlt)). [#2955](https://github.com/Leaflet/Leaflet/pull/2955) [Leaflet/Leaflet#2955](https://github.com/Leaflet/Leaflet/pull/2955)
* Fixed the build system to work in non-git Leaflet folder (by [@cschwarz](https://github.com/cschwarz)). [#2758](https://github.com/Leaflet/Leaflet/pull/2758)


## 0.7.7 (2015-10-26)

* Fixed a regression that could sometimes cause tiles to disappear when pinch-zooming on iOS devices.
* Fixed a regression related to msPointer detection in IE10 (affecting Leaflet.draw and some other plugins) (by @danzel) #3842 #3839 #3804
* Fixed a bug where a mouseout could fire after a vector element was removed (by @sambernet). #3849 #3829
* Fixed touch interactions in Edge browser (by @mitchless & @Neorth). #3853 #3379
* Fixed a bug where removing a layer group from a feature group would throw an error (by @Lambdac0re). #3869

Note tha we skipped 0.7.6 version for which we accidentally published a broken build to NPM.


## 0.7.5 (2015-09-02)

* Fixed a regression that broke animation in Leaflet.markercluster. [#3796](https://github.com/Leaflet/Leaflet/issues/3796)


## 0.7.4 (2015-09-01)

* Fixed a bug introduced by a recent Chrome update that caused the map not to react to interactions until all tiles are loaded. [#3689](https://github.com/Leaflet/Leaflet/issues/3689)
* Fixed a bug where tile layers were not respecting their `minZoom` or `maxZoom` options (by [@ivansanchez](https://github.com/ivansanchez)) [#3778](https://github.com/Leaflet/Leaflet/pull/3778)
* Improved detection of touch-capable web browsers, in particular fixing touch interactions in device emulation mode in Chrome and Firefox (by [@ivansanchez](https://github.com/ivansanchez)) [#3520](https://github.com/Leaflet/Leaflet/pull/3520) [#3710](https://github.com/Leaflet/Leaflet/pull/3710)
* Fixed a bug where tile layers with `maxNativeZoom` were not checking bounds properly (by [@jlaxon](https://github.com/jlaxon)) [#3415](https://github.com/Leaflet/Leaflet/pull/3152)
* Fixed a bug where popups were not remembering which layer originated them after calling `bindPopup(popup)` (by [@Eschon](https://github.com/Eschon)) [#3675](https://github.com/Leaflet/Leaflet/pull/3675)
* Fixed a race condition between markers and zoom animation (by [@perliedman](https://github.com/perliedman)) [#3152](https://github.com/Leaflet/Leaflet/pull/3152)
* Fixed a bug with `Map.fitBounds` padding (by [@bsstoner](https://github.com/bsstoner)). [#2489](https://github.com/Leaflet/Leaflet/issues/2489)
* Allow canvas paths to fire `dblclick` and `contextmenu` events (by [@ivansanchez](https://github.com/ivansanchez)) [#3482](https://github.com/Leaflet/Leaflet/pull/3482)
* Allow canvas filled polygons to use the `fillRule` option (by [@w8r](https://github.com/w8r)) [#3477](https://github.com/Leaflet/Leaflet/pull/3477)
* Allow canvas lines to use `lineCap` and `lineJoin` options (by [@northerneyes](https://github.com/northerneyes)) [#3156](https://github.com/Leaflet/Leaflet/pull/3156)
* Updated bower definitions to comply with best practices (by [@guptaso2](https://github.com/guptaso2)) [#2726](https://github.com/Leaflet/Leaflet/pull/2726) [#3448](https://github.com/Leaflet/Leaflet/pull/3448)


## 0.7.3 (2014-05-23)

* Added proper **bower** and **component** support (by [@calvinmetcalf](https://github.com/calvinmetcalf)). [#2561](https://github.com/Leaflet/Leaflet/pull/2561) [#1903](https://github.com/Leaflet/Leaflet/issues/1903)
* Fixed a bug where dragging the map outside the window caused an error on FF. [#2610](https://github.com/Leaflet/Leaflet/issues/2610)
* Fixed a bug where some taps on Android where not working, often falsely perceived as drags (by [@axefrog](https://github.com/axefrog)). [#2503](https://github.com/Leaflet/Leaflet/pull/2503)
* Fixed a bug where clicks on Android were skipped when happened too fast. [#2303](https://github.com/Leaflet/Leaflet/issues/2303)
* Fixed a bug where calling `setView` (or similar methods) several times in succession could freeze the map. [#2521](https://github.com/Leaflet/Leaflet/issues/2521) [#2236](https://github.com/Leaflet/Leaflet/issues/2236) [#2485](https://github.com/Leaflet/Leaflet/issues/2485)
* Fixed a bug where `Control.Layers` wasn't properly removed (by [@jack-kerouac](https://github.com/jack-kerouac)). [#2569](https://github.com/Leaflet/Leaflet/pull/2569)
* Fixed a bug that caused `TileLayer` `load` event not to fire properly. [#2510](https://github.com/Leaflet/Leaflet/issues/2510)
* Fixed Canvas-based paths not triggering `remove` event when removed (by @adimitrov). [#2486](https://github.com/Leaflet/Leaflet/pull/2486)
* Fixed a bug where you could end up with fractional zoom after pinch-zooming in some cases (by [@danzel](https://github.com/danzel). [#2400](https://github.com/Leaflet/Leaflet/pull/2400) [#1943](https://github.com/Leaflet/Leaflet/issues/1934)


## 0.7.2 (2014-01-17)

* Fixed a bug that appeared with **Chrome 32 update** that made all **mouse events shifted on scrolled pages**. [#2352](https://github.com/Leaflet/Leaflet/issues/2352)
* Fixed a bug that could break tile loading when using non-standard tile sizes. [#2288](https://github.com/Leaflet/Leaflet/issues/2288)
* Fixed a bug where `maxNativeZoom` option didn't work with TMS tile layers (by [@perliedman](https://github.com/perliedman)). [#2321](https://github.com/Leaflet/Leaflet/issues/2321) [#2314](https://github.com/Leaflet/Leaflet/issues/2314)


## 0.7.1 (2013-12-06)

* Fixed a bug where pinch-zooming quickly could occasionally leave the map at a fractional zoom thus breaking tile loading (by [@danzel](https://github.com/danzel)). [#2269](https://github.com/Leaflet/Leaflet/pull/2269) [#2255](https://github.com/Leaflet/Leaflet/issues/2255) [#1934](https://github.com/Leaflet/Leaflet/issues/1934)
* Fixed tile flickering issues on some old Android 2/3 devices by disabling buggy hardware accelerated CSS there (by [@danzel](https://github.com/danzel)). [#2216](https://github.com/Leaflet/Leaflet/pull/2216) [#2198](https://github.com/Leaflet/Leaflet/issues/2198)
* Fixed a regression that sometimes led to an error when you started pinch-zoom as the first action on the map (by [@danzel](https://github.com/danzel)). [#2259](https://github.com/Leaflet/Leaflet/pull/2259) [#2256](https://github.com/Leaflet/Leaflet/issues/2256)
* Reverted `L.Util.template` optimizations to allow Leaflet to be used in eval-banning environments like browser extensions (performance gain was insignificant anyway) (by [@calvinmetcalf](https://github.com/calvinmetcalf)). [#2217](https://github.com/Leaflet/Leaflet/issues/2217) [#2209](https://github.com/Leaflet/Leaflet/issues/2209) [#1968](https://github.com/Leaflet/Leaflet/issues/1968)
* Fixed a regression where `Map` `invalidateSize` could lead to unexpected results when called before map initialization (by [@Zverik](https://github.com/Zverik)). [#2250](https://github.com/Leaflet/Leaflet/issues/2250) [#2249](https://github.com/Leaflet/Leaflet/issues/2249)
* Fixed a regression where `FeatureGroup` containing other group overwrote original `e.layer` value in mouse events (by [@gumballhead](https://github.com/gumballhead)). [#2253](https://github.com/Leaflet/Leaflet/pull/2253) [#2252](https://github.com/Leaflet/Leaflet/issues/2252)
* Fixed a regression where `CircleMarker` `setLatLngs` didn't return `this` (by [@radicalbiscuit](https://github.com/radicalbiscuit)). [#2206](https://github.com/Leaflet/Leaflet/pull/2206)

## 0.7 (2013-11-18)

### Improvements

#### Usability improvements

* Added **support for IE11 touch devices** (by [@danzel](https://github.com/danzel), [@DanielX2](https://github.com/DanielX2) and [@fnicollet](https://github.com/fnicollet)). [#2039](https://github.com/Leaflet/Leaflet/pull/2039) [#2066](https://github.com/Leaflet/Leaflet/pull/2066) [#2037](https://github.com/Leaflet/Leaflet/issues/2037) [#2102](https://github.com/Leaflet/Leaflet/issues/2102)
* Added shift-double-click to zoom out shortcut. [#2185](https://github.com/Leaflet/Leaflet/issues/2185)
* Significantly improved **controls design on mobile** devices. [#1868](https://github.com/Leaflet/Leaflet/issues/1868) [#2012](https://github.com/Leaflet/Leaflet/issues/2012)
* Fixed and improved IE7-8 control and popup styles.
* Made subtle improvements to control styles on desktop browsers.
* Improved keyboard nav support so that map doesn't loose focus when you click on a control (by [@jacobtoye](https://github.com/jacobtoye)). [#2150](https://github.com/Leaflet/Leaflet/issues/2150) [#2148](https://github.com/Leaflet/Leaflet/issues/2148)
* Improved `maxBounds` behavior: now it doesn't force higher minimal zoom, and anchors to max bounds edges properly when zooming (by [@kapouer](https://github.com/kapouer) and [@mourner](https://github.com/mourner)). [#2187](https://github.com/Leaflet/Leaflet/pull/2187) [#1946](https://github.com/Leaflet/Leaflet/pull/1946) [#2081](https://github.com/Leaflet/Leaflet/issues/2081) [#2168](https://github.com/Leaflet/Leaflet/issues/2168) [#1908](https://github.com/Leaflet/Leaflet/issues/1908)

#### Map API improvements

* Made `Map` `setView` `zoom` argument optional. [#2056](https://github.com/Leaflet/Leaflet/issues/2056)
* Added `maxZoom` option to `Map` `fitBounds`. [#2101](https://github.com/Leaflet/Leaflet/issues/2101)
* Added `Map` `bounceAtZoomLimits` option that makes the map bounce when you pinch-zoom past limits (it worked like this before, but now you can disable this) (by [@trevorpowell](https://github.com/trevorpowell)). [#1864](https://github.com/Leaflet/Leaflet/issues/1864) [#2072](https://github.com/Leaflet/Leaflet/pull/2072)
* Added `distance` property to `Map` and `Marker` `dragend` events. [#2158](https://github.com/Leaflet/Leaflet/issues/2158) [#872](https://github.com/Leaflet/Leaflet/issues/872)
* Added optional support for center-oriented scroll and double-click zoom (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1939](https://github.com/Leaflet/Leaflet/issues/1939)
* Added `timestamp` to `Map` `locationfound` event. [#584](https://github.com/Leaflet/Leaflet/pull/584)
* Improved `Map` `invalidateSize` to call `moveend` immediately unless given `debounceMoveend: true` option (by [@jfirebaugh](https://github.com/jfirebaugh)). [#2181](https://github.com/Leaflet/Leaflet/issues/2181)

#### TileLayer API improvements

* Added `TileLayer` `maxNativeZoom` option that allows displaying tile layers on zoom levels above their maximum by **upscaling tiles**. [#1802](https://github.com/Leaflet/Leaflet/issues/1802) [#1798](https://github.com/Leaflet/Leaflet/issues/1798)
* Added `TileLayer` `tileloadstart` event (by [@tmcw](https://github.com/tmcw)). [#2142](https://github.com/Leaflet/Leaflet/pull/2142) [#2140](https://github.com/Leaflet/Leaflet/issues/2140)
* Improved `TileLayer` world size (used for wrapping and limiting tiles) to be derived from CRS instead of hardcoded, making it easier to use with custom projections (by [@perliedman](https://github.com/perliedman)). [#2160](https://github.com/Leaflet/Leaflet/pull/2160)

#### Marker API improvements

* Added CSS classes to draggable markers for easier customization (by [@snkashis](https://github.com/snkashis)). [#1902](https://github.com/Leaflet/Leaflet/issues/1902) [#1916](https://github.com/Leaflet/Leaflet/issues/1916)
* Added `Marker` `add` event (by [@tohaocean](https://github.com/tohaocean)). [#1942](https://github.com/Leaflet/Leaflet/issues/1942)
* Added `Marker` `getPopup` method (by [@scottharvey](https://github.com/scottharvey)). [#618](https://github.com/Leaflet/Leaflet/issues/618) [#1197](https://github.com/Leaflet/Leaflet/pull/1197)
* Added `Marker` `alt` option for adding `alt` text to markers (by [@jimmytidey](https://github.com/jimmytidey)). [#2112](https://github.com/Leaflet/Leaflet/pull/2112)

#### Vector layers API improvements

* Added `Path` `className` option for adding custom class names to vector layers.
* Added `Path` `lineCap` and `lineJoin` options (by [@palewire](https://github.com/palewire)). [#1843](https://github.com/Leaflet/Leaflet/issues/1843) [#1863](https://github.com/Leaflet/Leaflet/issues/1863) [#1881](https://github.com/Leaflet/Leaflet/issues/1881)
* Added ability to pass vector options to `GeoJSON` (by [@kapouer](https://github.com/kapouer)). [#2075](https://github.com/Leaflet/Leaflet/pull/2075)
* Improved `Polygon` `setLatLngs` to also accept holes (by [@aparshin](https://github.com/aparshin)). [#2095](https://github.com/Leaflet/Leaflet/pull/2095) [#1518](https://github.com/Leaflet/Leaflet/issues/1518)
* Added `GeoJSON` 3D format support and optional `altitude` argument to `LatLng` constructor (by [@Starefossen](https://github.com/Starefossen)). [#1822](https://github.com/Leaflet/Leaflet/pull/1822)
* Added `MultiPolygon` and `MultiPolyline` `openPopup` method. [#2046](https://github.com/Leaflet/Leaflet/issues/2046)

#### Popup API improvements

* Added `Popup` `update` method. [#1959](https://github.com/Leaflet/Leaflet/issues/1959)
* Added `Popup` `autoPanPaddingTopLeft` and `autoPanPaddingBottomRight` options (by [@albburtsev](https://github.com/albburtsev)). [#1972](https://github.com/Leaflet/Leaflet/issues/1972) [#1588](https://github.com/Leaflet/Leaflet/issues/1588)
* Added `Popup` `getContent` method. [#2100](https://github.com/Leaflet/Leaflet/issues/2100)
* Added `Popup` `getLatLng` method (by [@AndreyGeonya](https://github.com/AndreyGeonya)). [#2097](https://github.com/Leaflet/Leaflet/pull/2097)

#### Misc API improvements

* Added `ImageOverlay` `setUrl` and `getAttribution` methods and `attribution` option (by [@stsydow](https://github.com/stsydow)). [#1957](https://github.com/Leaflet/Leaflet/issues/1957) [#1958](https://github.com/Leaflet/Leaflet/issues/1958)
* Added localization support for the zoom control (by [@Danielku15](https://github.com/Danielku15)). [#1953](https://github.com/Leaflet/Leaflet/issues/1953) [#1643](https://github.com/Leaflet/Leaflet/issues/1643) [#1953](https://github.com/Leaflet/Leaflet/pull/1953)
* Significantly improved `L.Util.template` performance (affects `L.TileLayer`) by introducing cached template compilation (by [@calvinmetcalf](https://github.com/calvinmetcalf)). [#1969](https://github.com/Leaflet/Leaflet/issues/1969) [#1968](https://github.com/Leaflet/Leaflet/issues/1968) [#1554](https://github.com/Leaflet/Leaflet/issues/1554)
* Added `CRS` `getSize` for getting the world size in pixels (by [@perliedman](https://github.com/perliedman)). [#2160](https://github.com/Leaflet/Leaflet/pull/2160)
* Added `leaflet-drag-target` CSS class to an element under cursor when dragging for more flexible customization. [#2164](https://github.com/Leaflet/Leaflet/issues/2164) [#1902](https://github.com/Leaflet/Leaflet/issues/1902)
* Improved `L.DomUtil` `addClass`, `removeClass`, `hasClass` methods performance and fixed it to work with SVG elements. [#2164](https://github.com/Leaflet/Leaflet/issues/2164)

#### Dev workflow improvements

* Added an [official FAQ](https://github.com/Leaflet/Leaflet/blob/master/FAQ.md).
* Cleaned up and moved old IE styles to `leaflet.css` and removed `leaflet.ie.css`, so **no need for IE conditional comment** when including Leaflet now. [#2159](https://github.com/Leaflet/Leaflet/issues/2159)
* Added `leaflet-oldie` CSS class to map container in IE7-8 for easier styling. [#2159](https://github.com/Leaflet/Leaflet/issues/2159)
* Officially **dropped support for IE6**. Nobody cares anyway, and Leaflet should still be accessible on it. [#2159](https://github.com/Leaflet/Leaflet/issues/2159)
* Improved the build system to check JS errors in spec files. [#2151](https://github.com/Leaflet/Leaflet/issues/2151)
* Fixed `jake` command to run tests before building the source. [#2151](https://github.com/Leaflet/Leaflet/issues/2151)
* Switched the main file in `package.json` to unminified version for NPM/Browserify (by [@icetan](https://github.com/icetan)). [#2109](https://github.com/Leaflet/Leaflet/pull/2109)

### Bugfixes

#### 0.6 regression fixes

* Fixed a **memory leak in iOS7** that could crash Safari when handling lots of objects (e.g. 1000 markers) (by [@danzel](https://github.com/danzel)). [#2149](https://github.com/Leaflet/Leaflet/pull/2149) [#2122](https://github.com/Leaflet/Leaflet/issues/2122)
* Fixed a bug that caused lag at the beginning of panning in Chrome (by [@jfirebaugh](https://github.com/jfirebaugh)). [#2163](https://github.com/Leaflet/Leaflet/issues/2163)
* Fixed a regression that made the layers control unscrollable in Firefox. [#2029](https://github.com/Leaflet/Leaflet/issues/2029)
* Fixed a regression that broke `worldCopyJump: true` option (by [@fastrde](https://github.com/fastrde)). [#1904](https://github.com/Leaflet/Leaflet/issues/1904) [#1831](https://github.com/Leaflet/Leaflet/issues/1831) [#1982](https://github.com/Leaflet/Leaflet/issues/1982)
* Fixed a regression where a first map click after popup close button click was ignored (by [@fastrde](https://github.com/fastrde)). [#1537](https://github.com/Leaflet/Leaflet/issues/1537) [#1963](https://github.com/Leaflet/Leaflet/issues/1963) [#1925](https://github.com/Leaflet/Leaflet/issues/1925)
* Fixed a regression where `L.DomUtil.getMousePosition` would throw an error if container argument not provided (by [@scooterw](https://github.com/scooterw)). [#1826](https://github.com/Leaflet/Leaflet/issues/1826) [#1928](https://github.com/Leaflet/Leaflet/issues/1928) [#1926](https://github.com/Leaflet/Leaflet/issues/1926)
* Fixed a regression with vector layers positioning when zooming on IE10+ touch devices (by [@danzel](https://github.com/danzel)). [#2002](https://github.com/Leaflet/Leaflet/issues/2002) [#2000](https://github.com/Leaflet/Leaflet/issues/2000)
* Fixed a regression with `maxBounds` behaving weirdly on panning inertia out of bounds. [#2168](https://github.com/Leaflet/Leaflet/issues/2168)

#### General bugfixes

* Fixed a bug where the map could freeze if centered and immediately recentered on initialization. [#2071](https://github.com/Leaflet/Leaflet/issues/2071)
* Fixed a bug where all maps except the first one on a page didn't track window resize. [#1980](https://github.com/Leaflet/Leaflet/issues/1980)
* Fixed a bug where tiles in `EPSG:3395` projection were shifted (by [@aparshin](https://github.com/aparshin)). [#2020](https://github.com/Leaflet/Leaflet/issues/2020)
* Fixed a bug where scale control displayed wrong scale when on pages with `box-sizing: border-box`.
* Fixed a bug where zoom control button didn't appear as disabled if map was initialized at the zoom limit. [#2083](https://github.com/Leaflet/Leaflet/issues/2083)
* Fixed a bug where box zoom also triggered a map click event (by [@fastrde](https://github.com/fastrde)). [#1951](https://github.com/Leaflet/Leaflet/issues/1951) [#1884](https://github.com/Leaflet/Leaflet/issues/1884)
* Fixed a bug where shift-clicking on a map immediately after a drag didn't trigger a click event (by [@fastrde](https://github.com/fastrde)). [#1952](https://github.com/Leaflet/Leaflet/issues/1952) [#1950](https://github.com/Leaflet/Leaflet/issues/1950)
* Fixed a bug where content was updated twice when opening a popup. [#2137](https://github.com/Leaflet/Leaflet/issues/2137)
* Fixed a bug that could sometimes cause infinite panning loop when using `maxBounds` (by [@kapouer](https://github.com/kapouer) and [@mourner](https://github.com/mourner)). [#2187](https://github.com/Leaflet/Leaflet/pull/2187) [#1946](https://github.com/Leaflet/Leaflet/pull/1946) [#2081](https://github.com/Leaflet/Leaflet/issues/2081) [#2168](https://github.com/Leaflet/Leaflet/issues/2168) [#1908](https://github.com/Leaflet/Leaflet/issues/1908)

#### Browser bugfixes

* Fixed a bug where keyboard `+` no longer zoomed the map on FF 22+ (by [@fastrde](https://github.com/fastrde)). [#1943](https://github.com/Leaflet/Leaflet/issues/1943) [#1981](https://github.com/Leaflet/Leaflet/issues/1981)
* Fixed a bug where calling `Map` `remove` throwed an error in IE6-8. [#2015](https://github.com/Leaflet/Leaflet/issues/2015)
* Fixed a bug where `isArray` didn't work in rare cases in IE9. [#2077](https://github.com/Leaflet/Leaflet/issues/2077)
* Fixed a bug where FF sometimes produced console warnings when animating markers. [#2090](https://github.com/Leaflet/Leaflet/issues/2090)
* Fixed a bug where mouse wasn't handled correctly on RTL pages in some cases (by [@danzel](https://github.com/danzel)). [#1986](https://github.com/Leaflet/Leaflet/issues/1986) [#2136](https://github.com/Leaflet/Leaflet/pull/2136)

#### Mobile bugfixes

* Fixed a bug where tiles could **disappear after zooming on Chrome 30+ for Android** (by [@danzel](https://github.com/danzel)). [#2152](https://github.com/Leaflet/Leaflet/pull/2152) [#2078](https://github.com/Leaflet/Leaflet/issues/2078)
* Fixed a bug on IE10+ touch where pinch-zoom also caused click (by [@danzel](https://github.com/danzel)). [#2117](https://github.com/Leaflet/Leaflet/pull/2117) [#2094](https://github.com/Leaflet/Leaflet/issues/2094)
* Fixed a bug on IE10+ touch where controls didn't loose the pressed state after tapping (by [@danzel](https://github.com/danzel)). [#2111](https://github.com/Leaflet/Leaflet/pull/2111) [#2103](https://github.com/Leaflet/Leaflet/issues/2103)
* Fixed a bug where clicking on layers control labels on iOS throwed an error (by [@olemarkus](https://github.com/olemarkus) and [@dagjomar](https://github.com/dagjomar)). [#1984](https://github.com/Leaflet/Leaflet/issues/1984) [#1989](https://github.com/Leaflet/Leaflet/issues/1989)

#### Map API bugfixes

* Fixed a bug where `Map` `getCenter` returned old result after map container size changed (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1940](https://github.com/Leaflet/Leaflet/issues/1940) [#1919](https://github.com/Leaflet/Leaflet/issues/1919)
* Fixed `Map` `invalidateSize` rounding issues when changing map size by an odd pixel amount (by [@russelldavis](https://github.com/russelldavis)). [#1931](https://github.com/Leaflet/Leaflet/issues/1931)
* Fixed a bug where `Map` `removeLayer` didn't return `this` in a corner case (by [@jfirebaugh](https://github.com/jfirebaugh)).
* Fixed a bug where calling `Map` `setZoom` before `setView` would throw an error. [#1449](https://github.com/Leaflet/Leaflet/issues/1449)

#### Layers API bugfixes

* Fixed a bug where `Popup` `setLatLng` unnecessarily reset content and updated layout; works much faster now. [#2167](https://github.com/Leaflet/Leaflet/issues/2167)
* Fixed a bug where `toGeoJSON` of layers originated from GeoJSON GeometryCollection and MultiPoint didn't work properly (wasn't round-tripped). [#1956](https://github.com/Leaflet/Leaflet/issues/1956)
* Fixed `GeoJSON` dependencies in build configuration that could lead to a broken custom build in some situations (by [@alubchuk](https://github.com/alubchuk)). [#1909](https://github.com/Leaflet/Leaflet/issues/1909)
* Fixed a bug where `CircleMarker` popup placement wasn't updated after calling `setLatLng` (by [@snkashis](https://github.com/snkashis)). [#1921](https://github.com/Leaflet/Leaflet/issues/1921) [#1927](https://github.com/Leaflet/Leaflet/issues/1927)
* Fixed a bug where popup anchor wasn't updated on `Marker` `setIcon` (by [@snkashis](https://github.com/snkashis)). [#1874](https://github.com/Leaflet/Leaflet/issues/1874) [#1891](https://github.com/Leaflet/Leaflet/issues/1891)
* Fixed a bug with GeoJSON not throwing a descriptive error if a polygon has zero length inner ring (by [@snkashis](https://github.com/snkashis)). [#1917](https://github.com/Leaflet/Leaflet/issues/1917) [#1918](https://github.com/Leaflet/Leaflet/issues/1918)
* Fixed a bug where `FeatureGroup` would break when using non-evented children layers (by [@tmcw](https://github.com/tmcw)). [#2032](https://github.com/Leaflet/Leaflet/pull/2032) [#1962](https://github.com/Leaflet/Leaflet/issues/1962)
* Fixed a bug where `CircleMarker` `getRadius` would always return `null`. [#2016](https://github.com/Leaflet/Leaflet/issues/2016) [#2017](https://github.com/Leaflet/Leaflet/pull/2017)
* Fixed a bug where `TileLayer.WMS` didn't work with WMS 1.3 & EPSG4326 projection (by [@Bobboya](https://github.com/Bobboya)). [#1897](https://github.com/Leaflet/Leaflet/pull/1897)
* Fixed a bug where `FeatureGroup` events `e.layer` was sometimes empty in old IE. [#1938](https://github.com/Leaflet/Leaflet/issues/1938)

#### Misc API bugfixes

* Fixed a bug where `L.latLngBounds` didn't accept simple object `LatLng` form (by [@Gnurfos](https://github.com/Gnurfos)). [#2025](https://github.com/Leaflet/Leaflet/issues/2025) [#1915](https://github.com/Leaflet/Leaflet/issues/1915)
* Fixed a bug where `L.Util.tempalate` wouldn't work with double quotes in the string (by [@jieter](https://github.com/jieter)). [#1968](https://github.com/Leaflet/Leaflet/issues/1968) [#2121](https://github.com/Leaflet/Leaflet/pull/2121) [#2120](https://github.com/Leaflet/Leaflet/issues/2120)
* Fixed a bug where attribution control that was added to a map after attributed layers didn't have the corresponding attributions (by [@snkashis](https://github.com/snkashis)). [#2177](https://github.com/Leaflet/Leaflet/issues/2177) [#2178](https://github.com/Leaflet/Leaflet/pull/2178)


## 0.6.4 (2013-07-25)

* Fixed a regression where `fitBounds` and `setMaxBounds` could freeze the browser in some situations. [#1895](https://github.com/Leaflet/Leaflet/issues/1895) [1866](https://github.com/Leaflet/Leaflet/issues/1866)
* Fixed a bug where click on a map on a page with horizontal scroll caused the page to scroll right (by [@mstrelan](https://github.com/mstrelan)). [#1901](https://github.com/Leaflet/Leaflet/issues/1901)

## 0.6.3 (2013-07-17)

### Regression fixes

* Fixed a regression where mouse interaction had incorrect coordinates in some map positioning cases (by [@scooterw](https://github.com/scooterw)). [#1826](https://github.com/Leaflet/Leaflet/issues/1826) [#1684](https://github.com/Leaflet/Leaflet/issues/1684) [#1745](https://github.com/Leaflet/Leaflet/issues/1745) [#1](https://github.com/Leaflet/Leaflet/issues/1)
* Fixed a regression that prevented the map from responding to drag on areas covered with `ImageOverlay` (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1821](https://github.com/Leaflet/Leaflet/issues/1821)
* Fixed a regression where `layerremove` and `layeradd` were fired before the corresponding action finishes (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1846](https://github.com/Leaflet/Leaflet/issues/1846)
* Fixed a regression with `worldCopyJump: true` breaking the map on small zoom levels (by [@danzel](https://github.com/danzel)). [#1831](https://github.com/Leaflet/Leaflet/issues/1831)
* Fixed a regression where `Marker` shadow didn't animate on zoom after using `setIcon`. [#1768](https://github.com/Leaflet/Leaflet/issues/1768)
* Fixed a regression where the map would stuck when trying to animate zoom before any tile layers are added to the map. [#1484](https://github.com/Leaflet/Leaflet/issues/1484) [#1845](https://github.com/Leaflet/Leaflet/issues/1845)
* Fixed a regression with the layers control and popups closing on inside click in IE < 9. [#1850](https://github.com/Leaflet/Leaflet/issues/1850)
* Fixed a regression where scrolled popup content woudln't scroll in FF (by [@jfirebaugh](https://github.com/jfirebaugh)).

### Bug fixes

* Fixed vector feature flickering on Safari Mac for screen < 2000px. [#902](https://github.com/Leaflet/Leaflet/issues/902)
* Fixed a bug where `GeoJSON` ignored non-feature geometries passed in an array. [#1840](https://github.com/Leaflet/Leaflet/issues/1840)
* Fixed a bug where `Map` `minZoom` and `maxZoom` didn't always override values derived from the added tile layers. [1848](https://github.com/Leaflet/Leaflet/issues/1848)
* Fixed a bug where `TileLayer.Canvas` wasn't immediately redrawn when `redraw` is called (by [@tofferrosen](https://github.com/tofferrosen)). [#1797](https://github.com/Leaflet/Leaflet/issues/1797) [#1817](https://github.com/Leaflet/Leaflet/issues/1817)
* Fixed a bug where `FeatureGroup` still fired `layerremove` event on `removeLayer` even if the given layer wan't present in the group (by (by [@danzel](https://github.com/danzel))). [#1847](https://github.com/Leaflet/Leaflet/issues/1847) [#1858](https://github.com/Leaflet/Leaflet/issues/1858)
* Fixed a bug where `Marker` `setOpacity` wasn't returning the marker (by [@freepius44](https://github.com/freepius44)). [#1851](https://github.com/Leaflet/Leaflet/issues/1851)
* Fixed a bug where removing the map element from the DOM before panning transition has finished could keep a setInterval loop running forever (by [@rutkovsky](https://github.com/rutkovsky)). [#1825](https://github.com/Leaflet/Leaflet/issues/1825) [#1856](https://github.com/Leaflet/Leaflet/issues/1856)
* Fixed mobile styles to apply to `leaflet-bar` elements.

### Improvements

* Added ability to pass zoom/pan animation options to `setMaxBounds` (by [@davidjb](http://git.io/djb)). [#1834](https://github.com/Leaflet/Leaflet/pull/1834)
* Added `MultiPolyline` and `MultiPolygon` `getLatLngs` method. [#1839](https://github.com/Leaflet/Leaflet/issues/1839)

### Dev Workflow improvements

* Leaflet builds (*.js files in the `dist` folder) were removed from the repo and are now done automatically on each commit for `master` and `stable` branches by [Travis CI](travis-ci.org/Leaflet/Leaflet). The download links are on the [Leafet download page](http://leafletjs.com/download.html).

## 0.6.2 (2013-06-28)

 * Fixed a bug that caused wrong tile layers stacking order when using opacity < 1 (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1804](https://github.com/Leaflet/Leaflet/issues/1804) [#1790](https://github.com/Leaflet/Leaflet/issues/1790) [#1667](https://github.com/Leaflet/Leaflet/issues/1667)
 * Fixed a regression that caused tiles selection when double-clicking absolutely positioned maps with vector layers in it in Firefox (WTF!) (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1807](https://github.com/Leaflet/Leaflet/issues/1807)
 * Fixed a regression with a wrong cursor when dragging a map with vector layers, and tiles becoming selected on double click (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1800](https://github.com/Leaflet/Leaflet/issues/1800)
 * Fixed a regression that caused flickering of tiles near map border on zoom animation in Chrome.

## 0.6.1 (2013-06-27)

 * Fixed a regression with mouse wheel zooming too fast on Firefox (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1788](https://github.com/Leaflet/Leaflet/issues/1788)
 * Fixed a regression with broken zooming on maps with EPSG3395 projection. [#1796](https://github.com/Leaflet/Leaflet/issues/1796)
 * Fixed a bug where zoom buttons inherited Bootstrap link hover styles. [#1791](https://github.com/Leaflet/Leaflet/issues/1791)

## 0.6 (2013-06-26)

### Breaking changes

 * Moved polyline editing code into [Leaflet.draw](https://github.com/Leaflet/Leaflet.draw) plugin (where it fits much better along with all other editing and drawing handlers). The API remains the same.
 * Dropped support for environments that augment `Object.prototype` (luckily it's a thing of the past nowadays).
 * `Map` `invalidateSize` no longer fires `move` and `moveend` events if the map size didn't change. [#1819](https://github.com/Leaflet/Leaflet/issues/1819)

### Improvements

#### Usability and performance improvements

 * **Improved zoom control design** - cleaner, simpler, more accessible (mostly by [@jacobtoye](https://github.com/jacobtoye)). [#1313](https://github.com/Leaflet/Leaflet/issues/1313)
 * Updated `Control.Layers` icon (designed by Volker Kinkelin), added retina version and SVG source. [#1739](https://github.com/Leaflet/Leaflet/issues/1739)
 * Added keyboard accessibility to markers (you can now tab to them and press enter for click behavior). [#1355](https://github.com/Leaflet/Leaflet/issues/1355)
 * Improved `TileLayer` zoom animation to eliminate flickering in case one tile layer on top of another or when zooming several times quickly (by [@mourner](https://github.com/mourner) with lots of fixes from [@danzel](https://github.com/danzel)). [#1140](https://github.com/Leaflet/Leaflet/issues/1140) [#1437](https://github.com/Leaflet/Leaflet/issues/1437) [#52](https://github.com/Leaflet/Leaflet/issues/52)
 * Subtly improved default popup styles
 * Improved attribution control to be much less obtrusive (no "powered by", just a Leaflet link). You can still remove the prefix with `map.attributionControl.setPrefix('')` if you need.
 * Improved zoom behavior so that there's no drift of coordinates when you change zoom back and forth without panning. [#426](https://github.com/Leaflet/Leaflet/issues/426)
 * Improved double click behavior to zoom while keeping the clicked point fixed (by [@ansis](https://github.com/ansis)). [#1582](https://github.com/Leaflet/Leaflet/issues/1582)
 * Improved dragging behavior to not get stuck if mouse moved outside of an iframe containing the map (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1277](https://github.com/Leaflet/Leaflet/issues/1277) [#1782](https://github.com/Leaflet/Leaflet/issues/1782) [#1786](https://github.com/Leaflet/Leaflet/issues/1786)
 * Improved box zoom to be cancelable by pressing Escape (by [@yohanboniface](https://github.com/yohanboniface)). [#1438](https://github.com/Leaflet/Leaflet/issues/1438)
 * Improved `Marker` popups to close on marker click if opened (by [@popox](https://github.com/popox)). [#1761](https://github.com/Leaflet/Leaflet/issues/1761)
 * Significantly improved mass layer removal performance (by [@jfgirard](https://github.com/jfgirard) with fixes from [@danzel](https://github.com/danzel)). [#1141](https://github.com/Leaflet/Leaflet/pull/1141) [#1514](https://github.com/Leaflet/Leaflet/pull/1514)

#### API improvements

##### Layers API improvements

 * Added `toGeoJSON` method to various layer types, allowing you to **save your Leaflet layers as GeoJSON**. (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1462](https://github.com/Leaflet/Leaflet/issues/1462) [#712](https://github.com/Leaflet/Leaflet/issues/712) [#1779](https://github.com/Leaflet/Leaflet/issues/1779)
 * Added `GeoJSON` `coordsToLatLng` option for dealing with GeoJSON that has non-WGS84 coords (thanks to [@moonlite](https://github.com/moonlite)). [#888](https://github.com/Leaflet/Leaflet/issues/888) [#886](https://github.com/Leaflet/Leaflet/issues/886)
 * Improved `Marker` to reuse icon DOM elements when changing icons on the fly (e.g. fixes problems when changing icon on mouse hover) (by [@robpvn](https://github.com/robpvn) & [@danzel](https://github.com/danzel)). [#1726](https://github.com/Leaflet/Leaflet/issues/1726) [#561](https://github.com/Leaflet/Leaflet/issues/561) [#1753](https://github.com/Leaflet/Leaflet/issues/1753) [#1754](https://github.com/Leaflet/Leaflet/pull/1754)
 * Added `latlng` property to `Marker` mouse event data. [#1613](https://github.com/Leaflet/Leaflet/issues/1613)
 * Added `LayerGroup` `hasLayer` method (by [@rvlasveld](https://github.com/rvlasveld)). [#1282](https://github.com/Leaflet/Leaflet/issues/1282) [#1300](https://github.com/Leaflet/Leaflet/pull/1300)
 * Added `LayerGroup` `getLayers` method (by [@tmcw](https://github.com/tmcw)). [#1469](https://github.com/Leaflet/Leaflet/pull/1469)
 * Added `LayerGroup` `getLayer` method (by [@gumballhead](https://github.com/gumballhead)). [#1650](https://github.com/Leaflet/Leaflet/pull/1650)
 * Improved `LayerGroup` `removeLayer` method to also accept layer `id` (by [@gumballhead](https://github.com/gumballhead)). [#1642](https://github.com/Leaflet/Leaflet/pull/1642)
 * Added `Path` `pointerEvents` option for setting pointer-events on SVG-powered vector layers (by [@inpursuit](https://github.com/inpursuit)). [#1053](https://github.com/Leaflet/Leaflet/pull/1053)
 * Improved `Polygon` to filter out last point if it's equal to the first one (to fix GeoJSON polygon issues) (by [@snkashis](https://github.com/snkashis)). [#1153](https://github.com/Leaflet/Leaflet/pull/1153) [#1135](https://github.com/Leaflet/Leaflet/issues/1135)
 * Improved paths with `clickable: false` to allow mouse events to pass through to objects underneath (by [@snkashis](https://github.com/snkashis)). [#1384](https://github.com/Leaflet/Leaflet/pull/1384) [#1281](https://github.com/Leaflet/Leaflet/issues/1281)
 * Improved `L.Util.template` (and correspondingly url-related `TileLayer` options) to support functions for data values (by [@olegsmith](https://github.com/olegsmith)). [#1554](https://github.com/Leaflet/Leaflet/pull/1554)
 * Added `TileLayer` `getContainer` method (by [@tmcw](https://github.com/tmcw)). [#1433](https://github.com/Leaflet/Leaflet/pull/1433)
 * Fixed `TileLayer.Canvas` `redraw` method chaining (by [@jieter](https://github.com/jieter)). [#1287](https://github.com/Leaflet/Leaflet/pull/1287)
 * Added `TileLayer.WMS` `crs` option to be able to use WMS of CRS other than the map CRS (by [@kengu](https://github.com/kengu)). [#942](https://github.com/Leaflet/Leaflet/issues/942) [#945](https://github.com/Leaflet/Leaflet/issues/945)
 * Added `popupopen` and `popupclose` events to various layers (by [@Koc](https://github.com/Koc)). [#738](https://github.com/Leaflet/Leaflet/pull/738)
 * Added `Popup` `keepInView` option (thanks to [@lapo-luchini](https://github.com/lapo-luchini)) that prevents the popup from going off-screen while it's opened. [#1308](https://github.com/Leaflet/Leaflet/pull/1308) [#1052](https://github.com/Leaflet/Leaflet/issues/1052)
 * Added `Marker` `togglePopup` method (by [@popox](https://github.com/popox)). [#1761](https://github.com/Leaflet/Leaflet/issues/1761)
 * Added `Popup` `closeOnClick` option that overrides the same `Map` option for specific popups (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1669](https://github.com/Leaflet/Leaflet/issues/1669)
 * Improved `Marker` and `Path` `bindPopup` method to also accept `Popup` objects (by [@snkashis](https://github.com/snkashis)). [#1385](https://github.com/Leaflet/Leaflet/pull/1385) [#1208](https://github.com/Leaflet/Leaflet/issues/1208) [#1402](https://github.com/Leaflet/Leaflet/pull/1402)
 * Added `Marker` `setPopupContent` method (by [@snkashis](https://github.com/snkashis)). [#1373](https://github.com/Leaflet/Leaflet/pull/1373)

##### Map API improvements

 * Improved all view changing methods of `Map` (`setView`, `panTo`, `setZoom`, `fitBounds`, etc.) to accept an options object, including the ability to precisely control zoom/pan animations they cause (force disable/enable, etc.). [#1617](https://github.com/Leaflet/Leaflet/pull/1617) [#1616](https://github.com/Leaflet/Leaflet/issues/1616) [#340](https://github.com/Leaflet/Leaflet/issues/340) [#483](https://github.com/Leaflet/Leaflet/issues/483) [#1164](https://github.com/Leaflet/Leaflet/issues/1164) [#1420](https://github.com/Leaflet/Leaflet/issues/1420)
 * Improved `Map` `fitBounds` method to accept `padding` (or `paddingTopLeft` and `paddingBottomRight`) options, allowing you to zoom to an area with a certain padding in pixels (usually left for controls). [#859](https://github.com/Leaflet/Leaflet/issues/859)
 * Improved `Map` `invalidateSize` to accept options object (`animate` and `pan`, the latter controls if it pans the map on size change). (by [@jacobtoye](https://github.com/jacobtoye) and [@mourner](https://github.com/mourner)). [#1766](https://github.com/Leaflet/Leaflet/issues/1766) [#1767](https://github.com/Leaflet/Leaflet/issues/1767)
 * Added `Map` `setZoomAround` method for zooming while keeping a certain point fixed (used by scroll and double-click zooming). [#1157](https://github.com/Leaflet/Leaflet/issues/1157)
 * Added `Map` `remove` method to properly destroy the map and clean up all events, and added corresponding `unload` event (by [@jfirebaugh](https://github.com/jfirebaugh) and [@mourner](https://github.com/mourner)). [#1434](https://github.com/Leaflet/Leaflet/issues/1434) [#1101](https://github.com/Leaflet/Leaflet/issues/1101) [#1621](https://github.com/Leaflet/Leaflet/issues/1621)
 * Added `Map` `tap` handler that now contains all mobile hacks for enabling quick taps and long holds and `tapTolerance` option specifying the number of pixels you can shift your finger for click to still fire.
 * Added `Map` `zoomAnimationThreshold` for setting the max zoom difference with which zoom animation can occur. [#1377](https://github.com/Leaflet/Leaflet/issues/1377)
 * Improved `Map` `openPopup` method to also accept `(content, latlng)` signature as a shortcut.
 * Improved `Map` `closePopup` method to optionally accept a popup object to close. [#1641](https://github.com/Leaflet/Leaflet/issues/1641)
 * Improved `Map` `stopLocate` method to abort resetting map view if calling `locate` with `setView` option. [#747](https://github.com/Leaflet/Leaflet/issues/747)
 * Improved `Map` to throw exception if the specified container id is not found (by [@tmcw](htts://github.com/tmcw)). [#1574](https://github.com/Leaflet/Leaflet/pull/1574)
 * Improved `Map` `locationfound` event to pass all location data (heading, speed, etc.). [#984](https://github.com/Leaflet/Leaflet/issues/984) [#584](https://github.com/Leaflet/Leaflet/issues/584) [#987](https://github.com/Leaflet/Leaflet/issues/987) [#1028](https://github.com/Leaflet/Leaflet/issues/1028)
 * Added `Map` `resize` event. [#1564](https://github.com/Leaflet/Leaflet/issues/1564)
 * Added `Map` `zoomlevelschange` event that triggers when the current zoom range (min/max) changes (by [@moonlite](https://github.com/moonlite)). [#1376](https://github.com/Leaflet/Leaflet/pull/1376)

##### Controls API improvements

 * Added **generic toolbar classes** for reuse by plugin developers (used by zoom control).
 * Added `Map` `baselayerchange`, `overlayadd` and `overlayremove` events fired by `Control.Layers` (by [@calvinmetcalf](https://github.com/calvinmetcalf) and [@Xelio](https://github.com/Xelio)). [#1286](https://github.com/Leaflet/Leaflet/issues/1286) [#1634](https://github.com/Leaflet/Leaflet/issues/1634)
 * Added `Control` `getContainer` method. [#1409](https://github.com/Leaflet/Leaflet/issues/1409)

##### Misc API improvements

 * Made Leaflet classes compatible with **CoffeeScript class inheritance** syntax (by [@calvinmetcalf](https://github.com/calvinmetcalf)). [#1345](https://github.com/Leaflet/Leaflet/pull/1345) [#1314](https://github.com/Leaflet/Leaflet/issues/1314)
 * Added `cleanAllEventListeners` method (aliased to `off` without arguments) to all events-enabled objects (by [@iirvine](https://github.com/iirvine)). [#1599](https://github.com/Leaflet/Leaflet/issues/1599)
 * Added `addOneTimeEventListener` method (aliased to `once`) to all events-enabled objects (by [@iirvine](https://github.com/iirvine)). [#473](https://github.com/Leaflet/Leaflet/issues/473) [#1596](https://github.com/Leaflet/Leaflet/issues/1596)
 * Added ability to pass coordinates as simple objects (`{lat: 50, lon: 30}` or `{lat: 50, lng: 30}`). [#1412](https://github.com/Leaflet/Leaflet/issues/1412)
 * Added `LatLngBounds` `getNorth`, `getEast`, `getSouth`, `getWest` methods (by [@yohanboniface](https://github.com/yohanboniface)). [#1318](https://github.com/Leaflet/Leaflet/issues/1318)
 * Added `AMD` support (Leaflet now registers itself as a `leaflet` AMD module) (with fixes from [@sheppard](https://github.com/sheppard)). [#1364](https://github.com/Leaflet/Leaflet/issues/1364) [#1778](https://github.com/Leaflet/Leaflet/issues/1778)
 * Added `L.Util.trim` function (by [@kristerkari](https://github.com/kristerkari)). [#1607](https://github.com/Leaflet/Leaflet/pull/1607)

#### Development workflow improvements

 * Switched from Jasmine to [Mocha](http://visionmedia.github.io/mocha/) with Expect.js (matchers) and Sinon (spies) for tests (by [@tmcw](https://github.com/tmcw) & [@jfirebaugh](https://github.com/jfirebaugh)). [#1479](https://github.com/Leaflet/Leaflet/issues/1479)
 * Added [Karma](http://karma-runner.github.io) integration for running tests in a headless PhantomJS instance and code coverage reporting (by [@edjafarov](https://github.com/edjafarov)). [#1326](https://github.com/Leaflet/Leaflet/issues/1326) [#1340](https://github.com/Leaflet/Leaflet/pull/1340)
 * Added [Travis CI integration](https://travis-ci.org/Leaflet/Leaflet) for linting and running tests for each commit and pull request automatically (by [@edjafarov](https://github.com/edjafarov)). [#1336](https://github.com/Leaflet/Leaflet/issues/1336)
 * Significantly improved test coverage
 * Added compatibility with lazy evaluation scripts (by [@kristerkari](https://github.com/kristerkari)). [#1288](https://github.com/Leaflet/Leaflet/issues/1288) [#1607](https://github.com/Leaflet/Leaflet/issues/1607) [#1288](https://github.com/Leaflet/Leaflet/issues/1288)

### Bugfixes

#### General bugfixes

 * Fixed lots of issues with extent restriction by `Map` `maxBounds`. [#1491](https://github.com/Leaflet/Leaflet/issues/1491) [#1475](https://github.com/Leaflet/Leaflet/issues/1475) [#1194](https://github.com/Leaflet/Leaflet/issues/1194) [#900](https://github.com/Leaflet/Leaflet/issues/900) [#1333](https://github.com/Leaflet/Leaflet/issues/1333)
 * Fixed occasional crashes by disabling zoom animation if changing zoom level by more than 4 levels. [#1377](https://github.com/Leaflet/Leaflet/issues/1377)
 * Fixed a bug with that caused stuttery keyboard panning in some cases (by [@tmcw](https://github.com/tmcw)). [#1710](https://github.com/Leaflet/Leaflet/issues/1710)
 * Fixed a bug that caused unwanted scrolling of the page to the top of the map on focus. [#1228](https://github.com/Leaflet/Leaflet/issues/1228) [#1540](https://github.com/Leaflet/Leaflet/issues/1540)
 * Fixed a bug where clicking on a marker with an open popup caused the popup to faded in again (by [@snkashis](https://github.com/snkashis)). [#506](https://github.com/Leaflet/Leaflet/issues/560) [#1386](https://github.com/Leaflet/Leaflet/pull/1386)
 * Fixed a bug where zoom buttons disabled state didn't update on min/max zoom change (by [@snkashis](https://github.com/snkashis)). [#1372](https://github.com/Leaflet/Leaflet/pull/1372) [#1328](https://github.com/Leaflet/Leaflet/issues/1328)
 * Fixed a bug where scrolling slightly wouldn't always zoom out the map (by [@cschwarz](https://github.com/cschwarz)). [#1575](https://github.com/Leaflet/Leaflet/pull/1575)
 * Fixed popup close button to not leave an outline after clicking on it and reopening the popup (by [@dotCypress](https://github.com/dotCypress)). [#1537](https://github.com/Leaflet/Leaflet/pull/1537)
 * Fixed a bug that prevented tiles from loading during pan animation.
 * Fixed a bug with `contextmenu` events on popups falling through to map (by [@snkashis](https://github.com/snkashis)). [#1730](https://github.com/Leaflet/Leaflet/issues/1730) [#1732](https://github.com/Leaflet/Leaflet/issues/1732)
 * Fixed `404` tile loading errors when browsing the map off the world bounds.
 * Fixed shifted mouse events in some cases with map inside a relatively positioned parent (by [@scooterw](https://github.com/scooterw) and [@jec006](https://github.com/jec006)). [#1670](https://github.com/Leaflet/Leaflet/issues/1670) [#1684](https://github.com/Leaflet/Leaflet/issues/1684) [#1745](https://github.com/Leaflet/Leaflet/issues/1745) [#1744](https://github.com/Leaflet/Leaflet/issues/1744)
 * Fixed a bug where tile layer z-index order sometimes broke after view reset. [#1422](https://github.com/Leaflet/Leaflet/issues/1422)

#### Browser bugfixes

 * Fixed a bug with undesirable page scrolling in Firefox 17+ when you zoom the map by scrolling (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1789](https://github.com/Leaflet/Leaflet/issues/1789) [#1788](https://github.com/Leaflet/Leaflet/issues/1788)
 * Fixed a bug where mouse coordinates where shifted in Firefox if the map was inside a positioned block on a scrolled page (by [@joschka](https://github.com/joschka)). [#1365](https://github.com/Leaflet/Leaflet/pull/1365) [#1322](https://github.com/Leaflet/Leaflet/issues/1322)
 * Fixed a bug where box zoom didn't work in some cases in Firefox 18+ (by [@fabriceds](https://github.com/fabriceds)). [#1405](https://github.com/Leaflet/Leaflet/pull/1405)
 * Fixed a bug where `TileLayer` opacity didn't work in IE 7-8 (by [@javisantana](https://github.com/javisantana) & [@danzel](https://gi
.com/danzel)). [#1084](https://github.com/Leaflet/Leaflet/issues/1084) [#1396](https://github.com/Leaflet/Leaflet/pull/1396) [#1371](https://github.com/Leaflet/Leaflet/issues/1371)
 * Fixed Leaflet not working correctly in PhantomJS (by [@rassie](https://github.com/rassie)). [#1501](https://github.com/Leaflet/Leaflet/pull/1501)

#### Mobile bugfixes

 * Fixed a bug with layers control on WinPhone8/IE10 Touch (by [@danzel](https://github.com/danzel)). [#1635](https://github.com/Leaflet/Leaflet/pull/1635) [#1539](https://github.com/Leaflet/Leaflet/issues/1539)
 * Fixed a bug with click sometimes firing twice on WinPhone8/IE10 Touch (by [@danzel](https://github.com/danzel)). [#1694](https://github.com/Leaflet/Leaflet/issues/1694)
 * Fixed a bug in Android where click was triggered twice on one tap (by [@jerel](https://github.com/jerel) & [@mourner](https://github.com/mourner)). [#1227](https://github.com/Leaflet/Leaflet/pull/1227) [#1263](https://github.com/Leaflet/Leaflet/issues/1263) [#1785](https://github.com/Leaflet/Leaflet/issues/1785) [#1694](https://github.com/Leaflet/Leaflet/issues/1694)
 * Fixed a bug in Android where click on a collapsed layers control would immediately select one of the layers (by [@danzel](https://github.com/danzel)). [#1784](https://github.com/Leaflet/Leaflet/issues/1784) [#1694](https://github.com/Leaflet/Leaflet/issues/1694)

#### API bugfixes

##### General API bugfixes

 * Fixed click mouse event inside popups **not propagating outside the map** (fixes issues with jQuery.live and some mobile frameworks that rely on document click listeners). [#301](https://github.com/Leaflet/Leaflet/issues/301)
 * Fixed a bug where event listener still fired even if it was removed on the same event in other listener (by [@spamdaemon](https://github.com/spamdaemon)). [#1661](https://github.com/Leaflet/Leaflet/issues/1661) [#1654](https://github.com/Leaflet/Leaflet/issues/1654)
 * Fixed a bug where `L.point` and `L.latLng` factories weren't passing `null` and `undefined` values through.
 * Fixed `DomEvent` `removeListener` function chaining (by [@pagameba](https://github.com/pagameba)).
 * Fixed a bug where `removeEventListener` would throw an error if no events are registered on the object (by [@tjoekbezoer](https://github.com/tjoekbezoer)). [#1632](https://github.com/Leaflet/Leaflet/pull/1632) [#1631](https://github.com/Leaflet/Leaflet/issues/1631)
 * Fixed a bug where `Point` `equals` and `contains` methods didn't accept points in array form.
 * Fixed a bug where `LatLngBounds` `extend` of an undefined object would cause an error (by [@korzhyk](https://github.com/korzhyk)). [#1688](https://github.com/Leaflet/Leaflet/issues/1688)
 * Fixed a bug where `Control.Attribution` `removeAttribution` of inexistant attribution corrupted the attribution text. [#1410](https://github.com/Leaflet/Leaflet/issues/1410)
 * Fixed a bug where `setView` on an invisible map caused an error (by [@jfire](https://github.com/jfire)). [#1707](https://github.com/Leaflet/Leaflet/issues/1707)
 * Fixed compatibility with Browserify (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1572](https://github.com/Leaflet/Leaflet/pull/1572)

##### Layers API bugfixes

 * Fixed a bug where default marker icon path wasn't properly detected in some cases in IE6-7 (by [@calvinmetcalf](https://github.com/calvinmetcalf)). [#1294](https://github.com/Leaflet/Leaflet/pull/1294)
 * Fixed a bug where `TileLayer.WMS` param values weren't escaped in URLs (by [@yohanboniface](https://github.com/yohanboniface)). [#1317](https://github.com/Leaflet/Leaflet/issues/1317)
 * Fixed a bug where layers that belong to multiple feature groups didn't propagate events correctly (by [@danzel](https://github.com/danzel)). [#1359](https://github.com/Leaflet/Leaflet/pull/1359)
 * Fixed a bug where `TileLayer.WMS` `tileSize` option was ignored (by [@brianhatchl](https://github.com/brianhatchl)). [#1080](https://github.com/brianhatchl)
 * Fixed a bug where `Polyline` constructor could overwrite the source array (by [@snkashis](https://github.com/snkashis) and [@danzel](https://github.com/danzel)). [#1439](https://github.com/Leaflet/Leaflet/pull/1439) [#1092](https://github.com/Leaflet/Leaflet/issues/1092) [#1246](https://github.com/Leaflet/Leaflet/issues/1246) [#1426](https://github.com/Leaflet/Leaflet/issues/1426)
 * Fixed a bug where marker dragging disabling/enabling wouldn't always work correctly (by [@snkashis](https://github.com/snkashis) and [@escaped](https://github.com/escaped)). [#1471](https://github.com/Leaflet/Leaflet/pull/1471) [#1551](https://github.com/Leaflet/Leaflet/pull/1551)
 * Fixed `TileLayer` to prevent incorrect subdomain in case of negative tile coordinates (by [@malexeev](https://github.com/malexeev)). [#1532](https://github.com/Leaflet/Leaflet/pull/1532)
 * Fixed polygons to normalize holes (remove last point if it's equal to the first one) (by [@jfirebaugh](https://github.com/jfirebaugh)). [#](https://github.com/Leaflet/Leaflet/pull/1467) [#1459](https://github.com/Leaflet/Leaflet/issues/1459)
 * Fixed `DivIcon` `html` option to accept `0` as a value (by [@stuporglue](https://github.com/stuporglue)). [#1633](https://github.com/Leaflet/Leaflet/pull/1633)
 * Fixed a bug with Canvas-based paths throwing an error on `mousemove` in certain conditions. [#1615](https://github.com/Leaflet/Leaflet/issues/1615)
 * Fixed a bug where copies of the world wouldn't load if you set `TileLayer` `bounds` (by [@ansis](https://github.com/ansis)). [#1618](https://github.com/Leaflet/Leaflet/issues/1618)
 * Fixed a bug where `TileLayer` `load` event wouldn't always fire correctly. [#1565](https://github.com/Leaflet/Leaflet/issues/1565)
 * Fixed `TileLayer.WMS` compatibility with some old servers that only accepted request parameters in uppercase. [#1751](https://github.com/Leaflet/Leaflet/issues/1751)
 * Fixed a bug with incorrect `L.Icon.Default.imagePath` detection in some cases. [#1657](https://github.com/Leaflet/Leaflet/issues/1657)
 * Fixed a bug where layer `onRemove` was still called even if it was never added (by [@jfirebaugh](https://github.com/jfirebaugh)). [#1729](https://github.com/Leaflet/Leaflet/issues/1729)
 * Fixed a bug where calling `setRadius` on a Canvas-powered `CircleMarker` would cause an infinite loop (by [@snkashis](https://github.com/snkashis)). [#1712](https://github.com/Leaflet/Leaflet/issues/1712) [#1713](https://github.com/Leaflet/Leaflet/issues/1713) [#1728](https://github.com/Leaflet/Leaflet/issues/1728)
 * Renamed `marker-icon@2x.png` to `marker-icon-2x.png` to fix compatibility with Google AppEngine. [#1552](https://github.com/Leaflet/Leaflet/issues/1552) [#1553](https://github.com/Leaflet/Leaflet/issues/1553)
 * Fixed a bug where `popupclose` and `popupopen` events weren't fired for multipolygons and multipolylines (by [@tmcw](https://github.com/tmcw)). [#1681](https://github.com/Leaflet/Leaflet/issues/1681)

##### Map API bugfixes

 * Fixed a bug where `Map` `fitBounds` wouldn't work correctly with large bounds (thanks to [@MaZderMind](https://github.com/MaZderMind)). [#1069](https://github.com/Leaflet/Leaflet/issues/1069)
 * Fixed a bug where `Map` `hasLayer` wasn't handling `null` objects (by [@rvlasveld](https://github.com/rvlasveld)). [#1282](https://github.com/Leaflet/Leaflet/issues/1282) [#1302](https://github.com/Leaflet/Leaflet/pull/1302)
 * Fixed a bug where `Map` `moveend` fired before `dragend` on drag (by [@oslek](https://github.com/oslek)). [#1374](https://github.com/Leaflet/Leaflet/pull/1374)
 * Fixed a bug where panning with inertia produced an excessive `Map` `movestart` event on inertia start (by [@oslek](https://github.com/oslek)). [#1374](https://github.com/Leaflet/Leaflet/pull/1374)
 * Fixed a bug where `Map` `moveend` fired repeatedly on window resize even if the actual map size didn't change (by [@oslek](https://github.com/oslek)). [#1374](https://github.com/Leaflet/Leaflet/pull/1374)
 * Fixed a bug where `Map` `moveend` sometimes wasn't fired after drag (particularly often when dragging with a trackpad).
 * Fixed a bug that would cause an error when trying to get the state of the map in a `Map` `load` event listener. [#962](https://github.com/Leaflet/Leaflet/issues/962)
 * Added `Map` `autopanstart` event back (it was removed occasionally in previous version). [#1375](https://github.com/Leaflet/Leaflet/issues/1375)
 * Fixed a bug with removing previously set `Map` `maxBounds` (by [@jec006](https://github.com/jec006)). [#1749](https://github.com/Leaflet/Leaflet/issues/1749) [#1750](https://github.com/Leaflet/Leaflet/issues/1750)


## 0.5.1 (2013-02-06)

 * Fixed a regression with `GeoJSON` not accepting arrays of `FeatureCollection` (by [@snkashis](https://github.com/snkashis)). [#12
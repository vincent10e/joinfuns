# *************************************
#
#   application.js
#
#
# *************************************
#= require _plugins
#= require _app-base

JoinFuns.initialMap = ->

  handler = Gmaps.build('Google')

  displayOnMap = (position) ->
    marker = handler.addMarker(
      lat: position.coords.latitude
      lng: position.coords.longitude)
    handler.map.centerOn marker
    return

  handler.buildMap {
      internal: id: 'map'
      provider: {
        zoom: 15,
        center: (lat: 25.060671, lng: 121.5313468)
      }
    }, ->
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition(displayOnMap)
      return
    return

JoinFuns.initMaterialSelect = ->
  $ ->
    $('select').material_select()
    $(".dropdown-button").dropdown()

JoinFuns.filterTriggerInit = ->
  filterTrigger = $('.filter-trigger')

  filterTrigger.on 'click', ->
    triggerIcon = $(@).find('.material-icons')
    filterPanel = $('.filter-panel-wrapper')

    if filterPanel.hasClass('actived')
      filterPanel.removeClass 'actived'
      triggerIcon.html('expand_more')
    else
      filterPanel.addClass 'actived'
      triggerIcon.html('expand_less')

    return




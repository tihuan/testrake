# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->

  $window = $(window);
  console.log("HI!!!");
  console.log($window.innerWidth());
  console.log($window.innerHeight());
  sessionStorage.setItem('window_width', $window.innerWidth());
  sessionStorage.setItem('window_height', $window.innerHeight());

  $("#plugins").append(" HI!!!!! PLUGIN: " + navigator.plugins)
  pluginInfo = 2
  plugin = 3
  pluginInfo += plugin
  console.log(pluginInfo)

  sayHi = ->
    console.log "hi!"

  $("#check-external-link").bind
    click: sayHi

$(document).ready(ready)
$(document).on('page:load', ready)

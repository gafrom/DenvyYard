#= require('lazypainter.js')

$ ->
  $('.container.welcome').css 'visibility', "hidden"

  
  pa = 
    "svgData"    : pathObj
    "strokeWidth": 3
    "onComplete" : startContent
    "strokeColor": "#C8D23C"
    "strokeCap"  : "butt"
    "ease"       : "easeInOutExpo"
  
  $('#face').lazylinepainter(pa)
  $('#face').lazylinepainter('paint')

startContent = ->
  
  $('.container.welcome, #face-background').css 'visibility', "visible"
  $('.container.welcome, #face-background').css 'opacity', 1
  $('#face').css 'opacity', 0
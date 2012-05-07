# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$("document").ready ->

  $('#footer-nav').localScroll()

  $('ul.portfolio-thumbs li').hover(
    -> $(".overlay", this).stop().animate({top:'0px'},{queue:false,duration:300})
    -> $(".overlay", this).stop().animate({top:'-183px'},{queue:false,duration:300})
  )

  $(".the-tooltip").each ->
    $(this).qtip
      content:
        text: $(this).children("span:first").html()

      position:
        corner:
          target: "rightMiddle"
          tooltip: "leftMiddle"

        adjust:
          x: 5
          y: 0

      style:
        background: "#000000"
        width: "auto"
        color: "#FFFFFF"
        tip:
          corner: "leftMiddle"
          size:
            x: 8
            y: 17

        border:
          width: 1
          radius: 5
          color: "#000000"
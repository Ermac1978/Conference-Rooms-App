$(document).on 'page:change', ->
  $(".table tr:even").css 'background-color': 'lightgreen'

  $("button.show_feet").on "click", ->
    sqfeet = $(this).closest(".sq_feet").data("sqfootage")
    message = $("<span>" + sqfeet + "sqft</span>")
    $(this).closest(".sq_feet").append(message)
    $(this).remove()

  $('button').on 'click', ->
    $(this).closest('#rooms').find('.photos').slideToggle()

  $(".home").on "mouseenter", "h1 span a", (event) ->
    event.preventDefault()
    $(this).text "Home"
  $(".home").on "mouseleave", "h1 span a", (event) ->
    event.preventDefault()
    $(this).text "My Conference Rooms App"

  $(".expand").on "mouseenter", (event) ->
    event.preventDefault()
    $(this).animate fontSize: '3em', 300
  $(".expand").on "mouseleave", (event) ->
    event.preventDefault()
    $(this).animate fontSize: '1em', 300
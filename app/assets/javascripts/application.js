// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('page:change', function() {

    function showButtons() {
        $(this).find(".slide").slideToggle();
    }
    $(".thumbnail").on("mouseenter", showButtons)
                   .on("mouseleave", showButtons);
});

//    $(".table tr:even").css({'background-color': 'lightgreen'});

//    $("button.show_feet").on("click", function() {
//        var sqfeet = $(this).closest(".sq_feet").data("sqfootage");
//        var message = $("<span>" + sqfeet + "sqft</span>");
//        $(this).closest(".sq_feet").append(message);
//        $(this).remove();
//    });

//    $(".home").on("mouseenter", "h1 span a", function(event) {
//        event.preventDefault();
//        $(this).text("Home");
//    });
//    $(".home").on("mouseleave", "h1 span a", function(event) {
//        event.preventDefault();
//        $(this).text("My Conference Rooms App");
//    });

//    $(".expand").on("mouseenter", function(event) {
//        event.preventDefault();
//        $(this).animate({
//            fontSize:'3em'
//        }, 300 );
//    });
//    $(".expand").on("mouseleave", function(event) {
//        event.preventDefault();
//        $(this).animate({
//            fontSize:'1em'
//        }, 300 );
//    });

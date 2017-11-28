// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
// require materialize - can be swapped for materialize-sprockets
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs
//= require materialize-sprockets

$(document).ready(function(){
  $('#open-search').click(function(){
    $('#search-box').removeClass('hide');
    $('body').addClass('no-scroll');
  });

  $('#close-search').click(function(){
    $('#search-box').addClass('hide');
    $('body').removeClass('no-scroll');
  });

  $('#activate-femme-drop').mouseover(function(){
    $('#femme-drop').removeClass('hide');
  });
  $('#femme-drop').mouseleave(function(){
    $('#femme-drop').addClass('hide');
  });
});
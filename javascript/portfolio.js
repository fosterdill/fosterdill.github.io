window.Portfolio = {
  Routers: {},
  Views: {},
  Models: {},
  Collections: {},

  initialize: function () {
    new Portfolio.Routers.Router();
    Backbone.history.start();
  }
}

$(document).ready(function () {
  Portfolio.initialize();

  //handlers for about and projects clicks
  $('.about-link').on('click', function (event ) {
    event.preventDefault();
    if (Backbone.history.fragment == 'about') {
      Backbone.history.loadUrl('about');
    } else {
      Backbone.history.navigate('about', { trigger: true });
    }
  });

  $('.projects-link').on('click', function (event ) {
    event.preventDefault();
    if (Backbone.history.fragment == 'projects') {
      Backbone.history.loadUrl('projects');
    } else {
      Backbone.history.navigate('projects', { trigger: true });
    }
  });



  //scroll handler
  $(window).bind('mousewheel', function(event) {
    var delta = event.originalEvent.wheelDelta;
    var el = $(".scrollable");
    var elTop = parseInt(el.css("top"), 10);
    var limit = -parseInt($('.viewport').css('height')) - 500;

    //move if in bounds, set to max or min if out
    if (delta < 0) {
      if (elTop + delta > limit) {
        el.css("top", elTop + delta + "px");
      } else {
        el.css('top', limit + 'px');
      }
    } else {
      if (elTop + delta < 10) {
        el.css("top", elTop + delta + "px");
      } else {
        el.css('top', 10);
      }
    }
  });   
});

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
  // $('.about-link').on('click', function (event ) {
  //   event.preventDefault();
  //   if (Backbone.history.fragment == 'about') {
  //     Backbone.history.loadUrl('about');
  //   } else {
  //     Backbone.history.navigate('about', { trigger: true });
  //   }
  // });

  // $('.projects-link').on('click', function (event ) {
  //   event.preventDefault();
  //   if (Backbone.history.fragment == 'projects') {
  //     Backbone.history.loadUrl('projects');
  //   } else {
  //     Backbone.history.navigate('projects', { trigger: true });
  //   }
  // });

//   var handle = function(delta) {
//     var el = $(".scrollable");
//     var elTop = parseInt(el.css("top"), 10);
//     var limit = -parseInt($('.viewport').css('height')) - 300;
//
//     console.log('down');
//     //move if in bounds, set to max or min if out
//     if (delta < 0) {
//       if (elTop + delta > limit) {
//         el.css("top", elTop + delta + "px");
//       } else {
//         el.css('top', limit + 'px');
//       }
//     } else {
//       if (elTop + delta < 10) {
//         el.css("top", elTop + delta + "px");
//       } else {
//         el.css('top', 10);
//       }
//     }
//   };
//
// /** Event handler for mouse wheel event.
//  */
// function wheel(event){
//         var delta = 0;
//         if (!event) /* For IE. */
//                 event = window.event;
//         if (event.wheelDelta) { /* IE/Opera. */
//                 delta = event.wheelDelta;
//         } else if (event.detail) { /** Mozilla case. */
//                 /** In Mozilla, sign of delta is different than in IE.
//                  * Also, delta is multiple of 3.
//                  */
//                 delta = -event.detail*10;
//         }
//         /** If delta is nonzero, handle it.
//          * Basically, delta is now positive if wheel was scrolled up,
//          * and negative, if wheel was scrolled down.
//          */
//         if (delta)
//                 handle(delta);
//         /** Prevent default actions caused by mouse wheel.
//          * That might be ugly, but we handle scrolls somehow
//          * anyway, so don't bother here..
//          */
//         if (event.preventDefault)
//                 event.preventDefault();
// 	event.returnValue = false;
// }
//
// /** Initialization code. 
//  * If you use your own event management code, change it as required.
//  */
// if (window.addEventListener)
//         /** DOMMouseScroll is for mozilla. */
//         window.addEventListener('DOMMouseScroll', wheel, false);
// /** IE/Opera. */
// window.onmousewheel = document.onmousewheel = wheel;
});

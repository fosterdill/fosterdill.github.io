Portfolio.Routers.Router = Backbone.Router.extend({
  routes: {
    'about': 'about',
    'projects': 'projects'
  },

  about: function () {
    $('.scrollable').animate({ 'top': 10 }, 200);
  },

  projects: function () {
    $('.scrollable').animate({ 'top': -290 }, 200);
  }
});

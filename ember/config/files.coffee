module.exports = (lineman) ->
  js:
    vendor: [
      'vendor/js/jquery.js',
      'vendor/js/handlebars.js',
      'vendor/js/ember.js',
      'vendor/js/ember-data.js',
      'vendor/js/bootstrap.js',
      'vendor/js/**/*.js'
    ]

  css:
    vendor: [
      'vendor/css/bootstrap.css',
      'vendor/css/bootstrap-theme.css'
    ]
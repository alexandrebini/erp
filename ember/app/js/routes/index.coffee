App.IndexRoute = Ember.Route.extend
  model: ->
    @store.find 'city'
App.CustomersIndexRoute = Ember.Route.extend
  model: ->
    @store.find 'customer'

  actions:
    delete: (customer) ->
      if confirm('Are you sure?')
        customer.deleteRecord()
        customer.save().then(
          => @flashMessage('Customer destroyed', 'alert').now()
          => # do nothing
        )

App.CustomersNewRoute = Ember.DSModelRoute.extend
  model: ->
    @store.createRecord 'customer'

  actions:
    save: ->
      @currentModel.save().then(
        =>
          @flashMessage 'Customer created', 'success'
          @transitionTo 'customers.index'
        => # do nothing
      )

App.CustomersEditRoute = Ember.DSModelRoute.extend
  model: (params) ->
    @store.find 'customer', params.id

  actions:
    save: ->
      @currentModel.save().then(
        =>
          console.log 'success'
          @flashMessage 'Customer updated', 'success'
          @transitionTo 'customers.index'
        => # do nothing
      )

    delete: ->
      if confirm('Are you sure?')
        @currentModel.deleteRecord()
        @currentModel.save().then(
          =>
            @flashMessage 'Customer destroyed', 'success'
            @transitionTo 'customers.index'
          => # do nothing
        )
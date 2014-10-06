# App.CustomersIndexController = Ember.ArrayController.extend
#   actions:
#     destroy: (customer) ->
#       if confirm('Are you sure?')
#         customer.deleteRecord()
#         customer.save()

App.CustomersNewController = Ember.ObjectController.extend
  actions:
    addContact: ->
      contact = @store.createRecord('contact', { customer: @get('model') })
      @get('model.contacts').addObject contact

    removeContact: (contact) ->
      contact.deleteRecord()


# App.CustomersEditController = Ember.ObjectController.extend
#   actions:
#     save: ->
#       @get('model').save().then(
#         => @transitionToRoute 'customers.index',
#         => # do nothing
#       )

#     cancel: ->
#       @transitionToRoute 'customers.index'
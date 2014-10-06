# App.Router.reopen
#   location: 'history'

App.Router.map ->
  @resource 'customers', ->
    @route 'new'
    @route 'show', path: ':id'
    @route 'edit', path: ':id/edit'
    @route 'destroy', path: ':id/destroy'

App.Router.map ->
  @resource 'sales', ->
    @route 'new'
    @route 'show', path: ':id'
    @route 'edit', path: ':id/edit'
    @route 'destroy', path: ':id/destroy'
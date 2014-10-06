// http://reefpoints.dockyard.com/2014/03/03/a-simple-ember-data-route.html
Ember.DSModelRoute = Ember.Route.extend({
  deactivate: function() {
    var model = this.get('controller.model');
    model.rollback();
    if (model.get('isNew')) {
      model.deleteRecord();
    }
  },
  // actions: {
  //   willTransition: function(transition) {
  //     console.log('willtransition', transition)
  //     var model = this.get('controller.model');
  //     if (model.get('isDirty') && !confirm('You have unsaved changes. They will be lost if you continue!')) {
  //       transition.abort();
  //     }
  //   }
  // }
});
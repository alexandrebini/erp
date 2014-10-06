App.Contact = DS.Model.extend
  type: DS.attr('string')
  value: DS.attr('string')
  customer: DS.belongsTo('customer')
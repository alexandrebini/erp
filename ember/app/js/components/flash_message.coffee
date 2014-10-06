Ember.FlashMessageController.reopen
  foo: 1000

  flashClass: (->
    defaultClass = 'alert alert-dismissible'
    switch @get('message').type
      when 'notice' then "#{ defaultClass } alert-info"
      when 'success' then "#{ defaultClass } alert-success"
      when 'error' then "#{ defaultClass } alert-danger"
      when 'alert' then "#{ defaultClass } alert-warning"
      else defaultClass
  ).property('flashClass')
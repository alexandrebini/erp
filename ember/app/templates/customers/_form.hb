<form {{action 'save' on='submit' role='form'}}>
  <div {{bind-attr class=':form-group errors.name:has-error'}}>
    {{input value=name placeholder='Name' class='form-control'}}
      {{#each error in errors.name}}
        <p>Name {{error.message}}</p>
      {{/each}}
  </div>

  <br>

  <legend>Contacts</legend>
  <a {{action 'addContact'}} class='btn btn-info btn-xs'>Add Contact</a>
  <br>
  {{#each contact in contacts}}
    {{input value=contact.value placeholder='Value' class='form-control'}}
    <a {{action 'removeContact' contact}} class='btn btn-danger btn-xs'>Remove</a>
    <br>
  {{/each}}

  <br>

  <input type='submit' class='btn btn-default'></input>
</form>
<nav class='navbar navbar-default navbar-fixed-top' role='navigation'>
  <div class='container'>
    <div class='navbar-header'>
      <a>ERP</a>
    </div>
    <div class='collapse navbar-collapse'>
      <ul class='nav navbar-nav'>
        <li>
          {{#link-to 'customers.index'}} Customers {{/link-to}}
        </li>
        <li>
          {{#link-to 'sales.index'}} Sales {{/link-to}}
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class='container'>
  {{#flashMessage}}
    <div {{bind-attr class='flashClass'}} role='alert'>
      <button type='button' class='close' data-dismiss='alert'>
        <span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span>
      </button>
      {{message.text}}
    </div>
  {{/flashMessage}}

  {{outlet}}
</div>
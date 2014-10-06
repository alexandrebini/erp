<h1>Listing Customers</h1>

<table class='table table-striped table-condensed table-hover'>
  <thead>
    <tr>
      <th>Name</th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>

  <tbody>
    {{#each customer in model}}
      <tr>
        <td>{{customer.name}}</td>
        <td>{{link-to 'Show' 'customers.show' customer class='btn btn-info btn-xs'}}</td>
        <td>{{link-to 'Edit' 'customers.edit' customer class='btn btn-warning btn-xs'}}</td>
        <td><a {{action 'delete' customer}} class='btn btn-danger btn-xs'>Destroy</a>
      </tr>
    {{/each}}
  </tbody>
</table>
<br>
{{link-to 'New' 'customers.new' class='btn btn-primary'}}

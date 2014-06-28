class DataFormula
  operations: ['+', '-', '*', '/']
  initialize: (element) ->
    formula = "$sale_sale_items_attributes_0_quantity * $sale_sale_items_attributes_0_product_attributes_price"
    _.map formula.split(' '), (part) ->

  isOperation: (part) ->
    @operations.indexOf(part) != -1

  findInput: (id) ->




  @apply: (element) ->
    # $(element).find('[data-formula]').each ->
    #   $(this).calx()
    $(element).find('[data-formula]').parents('form').each ->
      $(this).calx()

$(document).on 'ready page:load', ->
  DataFormula.apply(this)

  $(document).on 'DOMNodeInserted', (e) ->
    DataFormula.apply e.target
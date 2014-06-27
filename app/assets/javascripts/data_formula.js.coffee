class DataFormula
  @apply: (element) ->
    # $(element).find('[data-formula]').each ->
    #   $(this).calx()
    $(element).find('[data-formula]').parents('form').each ->
      $(this).calx()

$(document).on 'ready page:load', ->
  DataFormula.apply(this)

  $(document).on 'DOMNodeInserted', (e) ->
    DataFormula.apply e.target
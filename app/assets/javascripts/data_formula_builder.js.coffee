class DataFormulaBuilder
  @apply: ->
    $(document).find('[data-formula-builder]').each ->
      element = $(this)
      formulaBuilder = element.data('formula-builder')
      formulaBuilder = formulaBuilder.replace(/_index_/, '_(.*)_')
      regExp = new RegExp(formulaBuilder)

      inputs = $('input').filter -> this.id.match regExp
      ids = _.map inputs, (element) -> "$#{ element.id }"

      element.attr 'data-formula',  ids.join(' + ')
      # element.parents('form').each ->
      #   console.log 'form', this
      #   $(this).calx()
      $(element).calx()


    # $(element).find('[data-formula]').parents('form').each ->
    #   $(this).calx()

$(document).on 'ready page:load DOMNodeInserted', ->
  DataFormulaBuilder.apply()
$(document).on 'ready page:load', ->
  $('[rel="autocomplete"]').each ->
    input = $(this)
    source = new Bloodhound
      datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value')
      queryTokenizer: Bloodhound.tokenizers.whitespace
      prefetch: false
      remote: "#{ input.data('source') }?query=%QUERY"
    source.initialize()

    input.typeahead(
      {
        minLength: 2,
        highlight: true
      },
      {
        source: source.ttAdapter(),
        displayKey: (item) -> item
      }
    )
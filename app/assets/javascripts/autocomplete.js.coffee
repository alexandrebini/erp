class Autocomplete
  defaultOptions:
    minLength: 2
    highlight: true

  constructor: (input) ->
    @input = $(input)
    @defineSource()
    @applyTypeahead()

  defineSource: ->
    @source = new Bloodhound
      datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value')
      queryTokenizer: Bloodhound.tokenizers.whitespace
      prefetch: false
      remote: "#{ @input.data('source') }?query=%QUERY"
    @source.initialize()
    @source

  applyTypeahead: ->
    @input.typeahead @defaultOptions,
      source: @source.ttAdapter(),
      displayKey: (item) => item[@displayKey(item)]
    @input.on 'typeahead:selected', (e, item) =>
      @onAutocompleted(e, item)

  displayKey: (item) ->
    if @input.data('display-key')
      @input.data('display-key')
    else
      _.keys(item)[0]

  onAutocompleted: (e, item) ->
    displayKey = @displayKey(item)
    namePrefix = @input.attr('name').replace("[#{ displayKey }]", '')
    _.each _.omit(item, displayKey), (value, key) ->
      $("[name='#{ namePrefix }[#{ key }]']").val value

$(document).on 'ready page:load', ->
  $('[rel="autocomplete"]').each ->
    new Autocomplete(this)
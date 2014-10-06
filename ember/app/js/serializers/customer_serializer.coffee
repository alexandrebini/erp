App.CustomerSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin, {
  attrs:
    contacts: { embedded: 'always' }
})
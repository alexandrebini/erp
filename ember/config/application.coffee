module.exports = (lineman) ->
  server:
    apiProxy:
      enabled: true
      host: 'localhost'
      port: 3000
  enableSass: true
  enableAssetFingerprint: true
  livereload: true
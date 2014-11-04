@CoffeeAlerts =
  
  timeout: 5  # Timeout in seconds

  # Local (client-only) collection
  collection: new Mongo.Collection(null)

  alert: (message, type="danger") ->
    CoffeeAlerts.collection.insert
      message: message
      seen: false
      type: type

  error: (message) ->
    CoffeeAlerts.alert(message, 'danger')

  info: (message) ->
    CoffeeAlerts.alert(message, 'info')

  warning: (message) ->
    CoffeeAlerts.alert(message, 'warning')

  success: (message) ->
    CoffeeAlerts.alert(message, 'success')

  clearSeen: ->
    CoffeeAlerts.collection.remove seen: true

# Remove seen on page change
Router.onRun ->
  console.log("CoffeeAlerts: remove seen alerts")
  CoffeeAlerts.collection.remove
    seen: true
  @next()

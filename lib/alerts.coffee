CoffeeAlerts =
  
    # Local (client-only) collection 
    collection: new Meteor.Collection(null)
  
    alert: (message, type) ->
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

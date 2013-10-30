
Template.coffeeAlerts.helpers alerts: ->
    CoffeeAlerts.collection.find()

Template.coffeeAlert.rendered = ->
    alert = @data
    Meteor.defer ->
        CoffeeAlerts.collection.update alert._id,
            $set:
                seen: true




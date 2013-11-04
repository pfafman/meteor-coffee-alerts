
Template.coffeeAlerts.helpers alerts: ->
    CoffeeAlerts.collection.find()

Template.coffeeAlert.rendered = ->
    alert = @data
    Meteor.defer ->
        if CoffeeAlerts.collection.find().count() > 0
            window.scroll(0,0)  # Scroll to top
        CoffeeAlerts.collection.update alert._id,
            $set:
                seen: true




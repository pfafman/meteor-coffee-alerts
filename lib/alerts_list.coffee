
Template.coffeeAlerts.helpers
  alerts: ->
    CoffeeAlerts.collection.find()

Template.coffeeAlert.rendered = ->
  alert = @data
  Meteor.defer ->
    if CoffeeAlerts.collection.find().count() > 0
      window.scroll(0,0)  # Scroll to top
    Meteor.setTimeout ->
      # Doing a longer timeout to allow routing
      CoffeeAlerts.collection.update alert._id,
        $set:
          seen: true
    , 1000
    Meteor.setTimeout ->
      # Doing a longer timeout to allow routing
      CoffeeAlerts.collection.remove(alert._id)
    , 3000

if Router?
  # this hook will run on all routes
  Router.onBeforeAction ->
    CoffeeAlerts.clearSeen()


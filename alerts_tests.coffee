#
#  Tests for the Coffee Alerts Package
#
Tinytest.add "Errors collection works", (test) ->
  test.equal CoffeeAlerts.collection.find({}).count(), 0
  
  CoffeeAlerts.error('A new error!');
  test.equal CoffeeAlerts.collection.find({}).count(), 1
  CoffeeAlerts.collection.remove {}

  CoffeeAlerts.success('Success!');
  test.equal CoffeeAlerts.collection.find({'type': 'success'}).count(), 1
  CoffeeAlerts.collection.remove {}

Tinytest.addAsync "Errors template works", (test, done) ->
  
  CoffeeAlerts.error('A new error!'); 
  test.equal CoffeeAlerts.collection.find(seen: false).count(), 1
  
  # render the template
  OnscreenDiv Spark.render ->
    Template.coffeeAlerts()
  #
  # wait a few milliseconds  (Don't think this works)
  Meteor.setTimeout ->
    test.equal CoffeeAlerts.collection.find(seen: false).count(), 0
    test.equal CoffeeAlerts.collection.find({}).count(), 1
    CoffeeAlerts.clear()
    test.equal CoffeeAlerts.collection.find(seen: true).count(), 0
    done()
  , 500


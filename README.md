Meteor-Coffee-Alerts
====================

A pattern to display application alerts via a bootstrap alert to 
the user written in coffeescript.

This is based on the sample from the [Discover Meteor book]
(http://www.discovermeteor.com) and built using coffeescript.

##Install

Install via atmosphere.

```bash
mrt add coffee-alerts
```

##Usage

Include the following in your template:

	{{> coffeeAlerts}}




To display an alert

```coffeescript
CoffeeAlerts.alert(message, type)
```	


Add this into a routing filter or somewhere else to clear the alerts that a user has seen.

```coffeescript
CoffeeAlerts.clearSeen()
```

Shortcuts

```coffeescript
CoffeeAlerts.error(message) # A bootstrap3 "danger" alert

CoffeeAlerts.warning(message) # A bootstrap3 "warning" alert

CoffeeAlerts.info(message) # A bootstrap3 "info" alert

CoffeeAlerts.success(message) # A bootstrap3 "success" alert
```

##Notes

This is based on the example from the [Discover Meteor book]
(http://www.discovermeteor.com) and there are other repos with similar code.  I have added this to atmosphere in able to use it easily in a number of my other projects.



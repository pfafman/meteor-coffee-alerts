Package.describe({
  summary: "A pattern to display application alerts via bootstrap to the user written in coffeescript",
  version: "0.4.1",
  git: "https://github.com/pfafman/meteor-coffee-alerts.git"
});

Package.on_use(function(api, where) {
  api.versionsFrom("METEOR@0.9.0");
  
  api.use([
    'mongo',
    'minimongo', 
    'mongo-livedata', 
    'templating',
    'iron:router@0.9.1', 
    'pfafman:font-awesome-4@4.2.0',
    'coffeescript',
    'less'
  ], 'client');

  api.add_files([
    'lib/alerts.coffee', 
    'lib/alerts_list.html', 
    'lib/alerts_list.coffee',
    'lib/alerts.less'
  ], 'client');

  if (api.export) {
      api.export('CoffeeAlerts')
  }

});


Package.on_test(function(api) {
  api.use("pfafman:coffee-alerts", 'client'); 
  api.use([
    'tinytest', 
    'test-helpers', 
    'coffeescript',
    'mongo', 
    'minimongo', 
    'mongo-livedata', 
    'templating',
    'iron:router@0.9.1'
  ], 'client');
  api.add_files('alerts_tests.coffee', 'client'); 
});
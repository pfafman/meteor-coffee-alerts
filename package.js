Package.describe({
  name: "pfafman:coffee-alerts",
  summary: "A pattern to display application alerts via bootstrap to the user written in coffeescript",
  version: "0.5.3",
  git: "https://github.com/pfafman/meteor-coffee-alerts.git"
});

Package.on_use(function(api, where) {
  api.versionsFrom("METEOR@1.0");
  
  api.use([
    'mongo',
    'templating',
    'coffeescript',
    'less',
    'iron:router@1.0.7', 
    'fortawesome:fontawesome@4.3.0',
  ], 'client');

  /*
   'mongo@1.0.7',
   'minimongo', 
   'mongo-livedata', 
   'templating',
  */

  api.add_files([
    'lib/alerts.coffee', 
    'lib/alerts_list.html', 
    'lib/alerts_list.coffee',
    'lib/alerts.less'
  ], 'client');

  
  if (api.export) {
  //    api.export('CoffeeAlerts')
  }
  

});


Package.on_test(function(api) {
  api.use("pfafman:coffee-alerts", 'client'); 
  api.use([
    'tinytest', 
    'test-helpers', 
    'coffeescript',
    'mongo', 
    'templating',
    'iron:router'
  ], 'client');
  api.add_files('alerts_tests.coffee', 'client'); 
});
Package.describe({
    summary: "A pattern to display application alerts via bootstrap to the user written in coffeescript"
});

Package.on_use(function(api, where) {
  
    api.use(['minimongo', 'mongo-livedata', 'templating', 'coffeescript'], 'client');
  
    api.add_files(['lib/alerts.coffee', 'lib/alerts_list.html', 'lib/alerts_list.coffee'], 'client');

    if (api.export) {
        api.export('CoffeeAlerts')
    }

});


Package.on_test(function(api) {
    api.use('coffee-alerts', 'client'); 
    api.use(['tinytest', 'test-helpers', 'coffeescript'], 'client');
    api.add_files('alerts_tests.coffee', 'client'); 
});
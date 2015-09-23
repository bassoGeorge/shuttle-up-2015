// Generated by CoffeeScript 1.9.3
(function() {
  angular.module('shuttleApp.services', []).provider('saApiEndpoints', function() {
    var externalHost, host, localHost;
    externalHost = "http://django-bassogeorge.rhcloud.com/shuttle/";
    localHost = "http://127.0.0.1:8000/shuttle/";
    host = externalHost;
    return {
      useLocalHost: function(b) {
        if (Boolean(b)) {
          return host = localHost;
        } else {
          return host = externalHost;
        }
      },
      $get: function() {
        return {
          echo: host,
          login: host + "login"
        };
      }
    };
  });

}).call(this);

//# sourceMappingURL=api.js.map

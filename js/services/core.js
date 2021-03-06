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
  }).factory('saUserCreds', function(saApiEndpoints, saEncPass, saHttp, $q) {
    var username;
    username = '';
    return {
      username: function() {
        return username;
      },
      isLoggedIn: function() {
        return Boolean(username);
      },
      logout: function() {
        username = '';
        return saHttp.setApiKey('');
      },
      login: function(user, password) {
        var pass, result;
        pass = saEncPass(password);
        result = $q.defer();
        saHttp.post(saApiEndpoints.login, {
          username: user,
          password: pass
        }).success(function(d) {
          if (d.success) {
            username = user;
            saHttp.setApiKey(d.data);
            return result.resolve(username);
          } else {
            return result.reject(d.reason || d.error);
          }
        });
        return result.promise;
      }
    };
  });

}).call(this);

//# sourceMappingURL=core.js.map

// Generated by CoffeeScript 1.9.3
(function() {
  angular.module('shuttleApp.controllers').controller('LoginController', function($scope, saUserCreds, $state, toastr) {
    $scope.username = '';
    $scope.password = '';
    return $scope.submit = function() {
      var res;
      res = saUserCreds.login($scope.username, $scope.password);
      return res.then(function(username) {
        toastr.success("Welcome " + username + ". You are successfully logged in as Administrator");
        return $state.go('home.about');
      }, function(reason) {
        return toastr.error(reason);
      });
    };
  });

}).call(this);

//# sourceMappingURL=login.js.map

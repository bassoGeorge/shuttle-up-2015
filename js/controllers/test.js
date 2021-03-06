// Generated by CoffeeScript 1.9.3
(function() {
  angular.module('shuttleApp.controllers').controller('TestController', function($scope, $modal, $aside, toastr, $log, saApiEndpoints, saEncPass, saHttp) {
    $scope.openModal = function() {
      return $modal.open({
        templateUrl: 'templates/modals/modal_test.html'
      });
    };
    $scope.openSide = function() {
      return $aside.open({
        templateUrl: 'templates/modals/modal_test.html',
        placement: 'left',
        size: 'sm'
      });
    };
    $scope.toast = function() {
      return toastr.success("Yes, we have done it!!!");
    };
    return $scope.toggleLogin = function() {
      return $scope.auth.isLoggedIn = !$scope.auth.isLoggedIn;
    };

    /*
    testData = {username: "anish", password: 'something'}
    saHttp.post(saApiEndpoints.echo, testData)
    .success (d) ->
      $log.info "Got back result from echo: "+JSON.stringify(d)
     */
  });

}).call(this);

//# sourceMappingURL=test.js.map

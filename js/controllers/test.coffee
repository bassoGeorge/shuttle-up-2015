angular.module 'shuttleApp.controllers'
.controller 'TestController', ($scope, $modal) ->
  $scope.openModal = () ->
    $modal.open(
      templateUrl: 'templates/modals/modal_test.html'
    )

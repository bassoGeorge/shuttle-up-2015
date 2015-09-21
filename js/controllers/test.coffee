angular.module 'shuttleApp.controllers'
.controller 'TestController', ($scope, $modal, $aside) ->
  $scope.openModal = () ->
    $modal.open(
      templateUrl: 'templates/modals/modal_test.html'
    )

  $scope.openSide = () ->
    $aside.open({
      templateUrl: 'templates/modals/modal_test.html'
      placement: 'left'
      size: 'sm'
    })

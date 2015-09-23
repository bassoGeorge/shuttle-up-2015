angular.module 'shuttleApp.controllers'
.controller 'TestController', ($scope, $modal, $aside, toastr,
                               $log, saApiEndpoints, saEncPass
                               saHttp) ->
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

  $scope.toast = () ->
    toastr.success("Yes, we have done it!!!")

  testData = {username: "anish", password: 'something'}

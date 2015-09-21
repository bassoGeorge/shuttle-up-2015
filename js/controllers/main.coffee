angular.module 'shuttleApp.controllers', []
.controller 'MainController', ($scope, $aside) ->
  $scope.sideMenu = () ->
    $aside.open(
      templateUrl: 'templates/modals/modal_side_menu.html'
      placement: 'left'
      size: 'sm'
    )

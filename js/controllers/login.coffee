angular.module 'shuttleApp.controllers'
.controller 'LoginController', ($scope, saUserCreds, $state, toastr) ->
  $scope.username = ''
  $scope.password = ''

  $scope.submit = () ->
    res = saUserCreds.login($scope.username, $scope.password)
    res.then(
      (username) ->
        toastr.success("Welcome #{username}. You are successfully logged in as Administrator")
        $state.go 'home.about'
     ,(reason) ->
        toastr.error(reason)
    )

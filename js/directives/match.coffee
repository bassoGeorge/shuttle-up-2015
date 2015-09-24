angular.module 'shuttleApp.directives', []
.directive 'saMatch', () ->
  restrict: 'E'
  templateUrl: 'templates/directives/dir_match.html'
  controller: ($scope, $log) ->
    $scope.editting = true
    $scope.played = false

    $scope.player_list = [
      {name: "Anish George", parish: "Defence Colony"},
      {name: "Jibin George", parish: "Defence Colony"},
      {name: "Vineet Topo", parish: "Defence Colony"},
      {name: "Bhaskaran Vijayan", parish: "Sunlight Colony"},
      {name: "Arushi someone", parish: "Sunlight Colony"},
      {name: "Crazy other chick", parish: "Sunlight Colony"},
      {name: "Abhilash Verghese", parish: "Okhla"},
      {name: "Stuti crazy", parish: "Okhla"},
    ]

    storeP1 = $scope.player_list[0]

    if $scope.player_list.length > 1
      storeP2 = $scope.player_list[1]
    else storeP2 = null

    $scope.reset = () ->
      $scope.p1 = storeP1
      $scope.p2 = storeP2

    $scope.reset()


    $scope.edit = (b) -> $scope.editting = Boolean(b)
    $scope.submit = () ->
      if $scope.matchForm.$valid
        $log.info "Valid form, submitting"    # Todo, submit function
        storeP1 = $scope.p1
        storeP2 = $scope.p2
        $scope.editting = false


    $scope.filtered = (player) ->
      # $scope.player_list
      # _.reject($scope.player_list, (obj) -> obj.name == name)
      _.without($scope.player_list, player)

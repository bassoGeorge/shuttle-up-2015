angular.module('shuttleApp',
  [
    'ui.bootstrap', 'ui.router',
    'shuttleApp.controllers'
  ]
).config ($stateProvider) ->
  $stateProvider
  .state('test',
    templateUrl: 'templates/views/view_test.html'
    controller: 'TestController'
    url: '/test'
  )


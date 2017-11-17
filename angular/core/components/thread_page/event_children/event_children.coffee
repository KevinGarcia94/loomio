angular.module('loomioApp').directive 'eventChildren', (NestedEventWindow) ->
  scope: {parentEvent: '=', parentEventWindow: '='}
  restrict: 'E'
  templateUrl: 'generated/components/thread_page/event_children/event_children.html'
  replace: true
  controller: ($scope) ->
    $scope.eventWindow = new NestedEventWindow
      parentEvent:       $scope.parentEvent
      discussion:        $scope.parentEventWindow.discussion
      initialSequenceId: $scope.parentEventWindow.initialSequenceId
      per:               $scope.parentEventWindow.per
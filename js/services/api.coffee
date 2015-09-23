angular.module 'shuttleApp.services', []
.provider('saApiEndpoints', () ->
  externalHost = "http://django-bassogeorge.rhcloud.com/shuttle/"
  localHost = "http://127.0.0.1:8000/shuttle/"

  host = externalHost

  useLocalHost: (b) ->
    if Boolean(b)
      host = localHost
    else
      host = externalHost

  $get: () ->
    return {
      login: host+"login"
    }
)
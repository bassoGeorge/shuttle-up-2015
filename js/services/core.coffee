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
      echo: host
      login: host+"login"
    }
)

.factory 'saUserCreds', (saApiEndpoints, saEncPass, saHttp, $q) ->
  username = ''
  return {
    username: () -> username
    isLoggedIn:  () -> Boolean(username)
    logout: () ->
      username = ''
      saHttp.setApiKey('')
    login: (user, password) ->
      pass = saEncPass(password)
      result = $q.defer()

      saHttp.post(saApiEndpoints.login,
        username: user
        password: pass
      ).success((d) ->
        if d.success
          username = user
          saHttp.setApiKey(d.data)
          result.resolve(username)
        else
          result.reject(d.reason || d.error)
      )
      return result.promise
  }

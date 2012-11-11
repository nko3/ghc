loadJQuery = ()->
  script = document.createElement('SCRIPT'); 
  script.src = '//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.2/jquery.min.js'
  document.body.appendChild(script)

loadJQuery() unless jQuery?
loadFrame = () ->
  setTimeout(loadFrame, 1000) unless jQuery?
  $('body').append("<iframe id='githubchat-frame'>")
  $("#githubchat-frame").attr('src', 'http://githubchat.us/chats/fighting-mongeese/popup').css(
    position: "fixed"
    right: 0
    top: 100
    'z-index': 2000
  )

loadFrame()

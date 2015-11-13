webrtc = null
myId = 0

@initialize = (id) ->
  myId = id
  localVideo = document.getElementById('local-video')
  remoteVideo = document.getElementById('remote-video')
  webrtc = new WebRTC(myId, localVideo, remoteVideo)
  webrtc.onReconnectingStarted = ->
    console.log('Reconnecting')
  webrtc.onHangedUp = ->
    console.log('HangUp')
  webrtc.onConnected = ->
    console.log('Connect')

@connect = ->
  webrtc.connect(myId, $('#id').val())

@hangUp = ->
  webrtc.hangUp()

flag = true
@toggle = ->
  webrtc.setVideoEnabled(flag)
  flag = !flag

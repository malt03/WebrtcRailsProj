webrtc = null
myId = 0

@initialize = (id) ->
  myId = id
  localVideo = document.getElementById('local-video')
  remoteVideo = document.getElementById('remote-video')
  webrtc = new WebRTC(myId, localVideo, remoteVideo)

@connect = ->
  webrtc.connect(myId, $('#id').val())

@hangUp = ->
  webrtc.hangUp()

flag = true
@toggle = ->
  webrtc.setVideoEnabled(flag)
  flag = !flag

webrtc = null

@initialize = (id) ->
  localVideo = document.getElementById('local-video')
  remoteVideo = document.getElementById('remote-video')
  webrtc = new WebRTC('ws://' + location.host + '/websocket', id, localVideo, remoteVideo)

@connect = ->
  webrtc.connect($('#id').val())

@hangUp = ->
  webrtc.hangUp()

flag = true
@toggle = ->
  webrtc.setVideoEnabled(flag)
  flag = !flag

webrtc = null

@initialize = (id) ->
  localVideo = document.getElementById('local-video')
  remoteVideo = document.getElementById('remote-video')
  webrtc = new WebRTC('ws://' + location.host + '/websocket', id, localVideo, remoteVideo)
  webrtc.onWebSocketConnected = -> console.log("onWebSocketConnected")
  webrtc.onWebSocketReconnectingStarted = -> console.log("onWebSocketReconnectingStarted")
  webrtc.onWebSocketReConnected = -> console.log("onWebSocketReConnected")
  webrtc.onWebRTCConnected = -> console.log("onWebRTCConnected")
  webrtc.onWebRTCReconnectingStarted = -> console.log("onWebRTCReconnectingStarted")
  webrtc.onWebRTCReconnected = -> console.log("onWebRTCReconnected")
  webrtc.onWebRTCHangedUp = -> console.log("onWebRTCHangedUp")
  webrtc.onWebRTCConnectFailed = -> console.log("onWebRTCConnectFailed")

@connect = ->
  webrtc.connect($('#id').val())

@hangUp = ->
  webrtc.hangUp()

flag = true
@toggle = ->
  webrtc.setVideoEnabled(flag)
  flag = !flag

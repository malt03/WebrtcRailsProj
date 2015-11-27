webrtc = null

@initialize = (id) ->
  localVideo = document.getElementById('local-video')
  remoteVideo = document.getElementById('remote-video')
  # webrtc = new WebRTC('ws://' + location.host + '/websocket', id, localVideo, remoteVideo)
  webrtc = new WebRTC('ws://localhost:3001', id, localVideo, remoteVideo)
  webrtc.onWebSocketConnected = -> console.log("onWebSocketConnected")
  webrtc.onWebSocketReconnectingStarted = -> console.log("onWebSocketReconnectingStarted")
  webrtc.onWebSocketReconnected = -> console.log("onWebSocketReconnected")
  webrtc.onWebRTCConnected = -> console.log("onWebRTCConnected")
  webrtc.onWebRTCReconnectingStarted = -> console.log("onWebRTCReconnectingStarted")
  webrtc.onWebRTCReconnected = -> console.log("onWebRTCReconnected")
  webrtc.onWebRTCHangedUp = -> console.log("onWebRTCHangedUp")
  webrtc.onWebRTCConnectFailed = (reason) -> console.log("onWebRTCConnectFailed: " + reason)
  webrtc.onServerMessage = (message) -> console.log("serverMessage: " + message)
  webrtc.onUserMessage = (userID, type, message) -> console.log("serverMessage: " + userID + ", " + type + ", " + message)
  webrtc.onWebRTCCall = (userID) -> webrtc.answer()

@connect = ->
  webrtc.call($('#id').val())

@hangUp = ->
  webrtc.hangUp()

flag = false
@toggle = ->
  webrtc.setVideoEnabled(flag)
  flag = !flag

@hoge = ->
  $.post("/hoge")

@sendUserMessage = ->
  webrtc.sendUserMessage($('#id').val(), 'hoge', 'piyopiyo')

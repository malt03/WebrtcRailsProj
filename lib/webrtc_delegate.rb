class WebrtcDelegate < WebrtcRails::DaemonDelegate
  def onWebSocketConnected(user_id)
    Rails.logger.info "websocket connected #{user_id}"
  end

  def onWebSocketDisconnected(user_id)
    Rails.logger.info "websocket disconnected #{user_id}"
  end

  def onWantCall(sent_user_id, will_receive_user_id)
    Rails.logger.info "want call #{sent_user_id} #{will_receive_user_id}"
    true
  end

  def onWantSendUserMessage(sent_user_id, will_receive_user_id, event, message)
    Rails.logger.info "want send user message #{sent_user_id} #{will_receive_user_id} #{event} #{message}"
    true
  end
end

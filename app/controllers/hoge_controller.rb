class HogeController < ApplicationController
  def hoge
    WebrtcRails::ServerMessage.send(2, 'hogehoge')
    # data = {
    #   user_id: 2,
    #   message: 'hogehoge',
    # }
    # redis = Redis.new
    # redis.publish('webrtc-rails', JSON.generate(data))
    render json: {ok: 1}
  end
end

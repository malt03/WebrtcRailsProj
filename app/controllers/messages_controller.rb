class MessagesController < ApplicationController
  def show
    @id = params[:id]
  end
end

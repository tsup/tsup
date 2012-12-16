class MessagesController < ActionController::Base

  def create
    Message.create( params['message'] )
  end

  def index
    @messages = Message.all
  end

end


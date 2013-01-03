class MessagesController < ActionController::Base

  def create
    Message.create( params['message'] )
    redirect_to root_url
  end

  def index
    @message = Message.new
    @messages = Message.all
  end

end


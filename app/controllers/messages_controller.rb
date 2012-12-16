class MessagesController < ActionController::Base

  def create
    Message.create( params['message'] )
  end

  def view
    @messages = Message.all
  end

end


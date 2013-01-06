class TsupsController < ApplicationController

  def create
    Tsup.create( params['tsup'] )
    redirect_to root_url
  end

  def index
    @tsup = Tsup.new
    @tsups = Tsup.all.reverse
  end

end


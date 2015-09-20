class LoggedOutController < ApplicationController
  def index
    render :layout => 'bare.html'
  end

  def help
    render :layout => 'bare.html'
  end
end

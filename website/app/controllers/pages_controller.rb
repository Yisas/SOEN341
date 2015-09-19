class PagesController < ApplicationController
  def index
    render :layout => 'bare.html'
  end

  def help
    render :layout => 'bare.html'
  end

  def home

  end

end

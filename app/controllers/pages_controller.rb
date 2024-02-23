class PagesController < ApplicationController
  
  before_action :require_login
  

  def home
    session[:user_id] = 1
  end

  def test
  end

end
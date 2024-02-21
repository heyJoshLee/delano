class PagesController < ApplicationController
  # before_action :current_user, [:home]

  def home
    puts "===============================session"
    puts session[:user_id]
  end

end
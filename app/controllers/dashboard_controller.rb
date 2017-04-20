class DashboardController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :login]

  def index

  end

  def home
    redirect_to dashboard_path if current_user
  end

  def login
    flash[:notice] = 'You must sign in before continuing'
    redirect_to root_path
  end

  def update_info
    
    render :index
  end
end

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
    current_user.assign_attributes(:dob              => params[:dob],
                                   :bio              => params[:bio],
                                   :height           => "#{params[:feet]}-#{params[:inches]}",
                                   :starting_weight  => params[:weight],
                                   :goal_weight      => params[:goal_weight],
                                   :body_fat         => params[:bf],
                                   :activity_level   => params[:activity_level],
                                   :program_type     => params[:program_type],
                                   :goal_body_fat    => params[:goal_bf],
                                   :program_length   => params[:program_length],
                                   :entered_info     => true )
    if current_user.save
      redirect_to root_path
    else
      render :index, :notice => current_user.errors
    end
  end
end

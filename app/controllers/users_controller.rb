class UsersController < ApplicationController

	before_action :access_profile?, only: [:show]

  def show
  	@user = User.find(params[:id])
  	
  end

  def access_profile?
  	if current_user.id != params[:id].to_i
   		redirect_to root_path, :alert => "Restricted area" 
  	end
  end

end

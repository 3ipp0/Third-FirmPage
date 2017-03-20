class UsersController < ApplicationController
	# def apply_event
	# 	@few_days_meeting = FewDaysMeeting.find(params[:id])
	# end
	def create
		@user = User.create(user_params)
	end

	def edit
 		@user = User.find(params[:id])
	end
	def update
 	  @user = User.find(params[:id])
      respond_to do |format|
        if @user.update_without_password(params[:user])
     	  format.html { redirect_to root_url, flash[:notice] = SUCCESSFUL_REGISTRATION_UPDATE_MSG }
     	  format.json { head :no_content }
   		else
     	  format.html { render action: "edit" }
     	  format.json { render json: @user.errors, status: :unprocessable_entity }
   		end
  	  end
	end

	private

	def user_params
		params.require(:user).permit(:resume,:first_name,:last_name,:phone_number,:some_text)
	end
end

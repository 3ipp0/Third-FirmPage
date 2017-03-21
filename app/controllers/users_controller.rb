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
      
        if @user.update_without_password(user_params) #params[:user]
     	  @user.save

      	  flash[:success] = "Your apply succsesfully acepted, our people will write you about this"
          redirect_to root_path
   		else
		  render "few_days_meetings/follow_form"

   		end
  	  
	end

	private

	def user_params
		params.require(:user).permit(:resume,:first_name,:last_name,:phone_number,:some_text)
	end
end

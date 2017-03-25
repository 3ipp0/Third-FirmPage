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

     	  respond_to do |format|
		      if @user.save
		        # Tell the UserMailer to send a welcome email after save
		        UserMailer.apply_event(@user, @few_days_meeting).deliver_now
		 
		        format.html { redirect_to(root_path, notice: 'You adder your apply for this event. We call you!') }
		        format.json { render json: @user, status: :created, location: @user }
		      else
		        format.html { render "few_days_meetings/follow_form" }
		        format.json { render json: @user.errors, status: :unprocessable_entity }
		      end
		  end

   		else
		  render "few_days_meetings/follow_form"
   		end
  	  
	end

	private

	def user_params
		params.require(:user).permit(:resume,:first_name,:last_name,:phone_number,:some_text)
	end
end

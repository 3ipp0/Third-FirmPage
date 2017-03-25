class FewDaysMeetingsController < InheritedResources::Base
	def start_time
        self.my_related_model.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end

    def show
    	@few_days_meeting = FewDaysMeeting.find(params[:id])
    end

    def follow
        unless already_start?
    	   @few_days_meeting = FewDaysMeeting.find(params[:id])
            @user = current_user
            current_user.follow_few_days_meeting!(@few_days_meeting)
            respond_to do |format|
            format.html {render 'follow_form'}
            format.js
            end
        else
            redirect_to(events_path, notice: 'This event is already started. Choose another one!')
        end
    end

    def already_start?
        @few_days_meeting = FewDaysMeeting.find(params[:id])
        if @few_days_meeting.start_time < Date.today
            return true
        else
            return false
        end
    end

  private

    def few_days_meeting_params
      params.require(:few_days_meeting).permit(:id, :name, :start_time, :end_time)
    end
end


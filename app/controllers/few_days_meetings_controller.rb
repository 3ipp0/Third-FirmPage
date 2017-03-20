class FewDaysMeetingsController < InheritedResources::Base
	def start_time
        self.my_related_model.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end

    def show
    	@few_days_meeting = FewDaysMeeting.find(params[:id])
    end

    def follow
    	@few_days_meeting = FewDaysMeeting.find(params[:id])
        current_user.follow_few_days_meeting!(@few_days_meeting)
        respond_to do |format|
            format.html {redirect_to @few_days_meeting}
            format.js
        end
    end

  private

    def few_days_meeting_params
      params.require(:few_days_meeting).permit(:id, :name, :start_time, :end_time)
    end
end


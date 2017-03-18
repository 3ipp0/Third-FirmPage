class FewDaysMeetingsController < InheritedResources::Base
	def start_time
        self.my_related_model.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end

    def show
    	@few_days_meeting = FewDaysMeeting.find(params[:id])
    end

    def apply(event_id)
    	
    end

  private

    def few_days_meeting_params
      params.require(:few_days_meeting).permit(:id, :name, :start_time, :end_time)
    end
end


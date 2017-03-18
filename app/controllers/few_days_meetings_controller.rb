class FewDaysMeetingsController < InheritedResources::Base
	def start_time
        self.my_related_model.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end

    
  private

    def few_days_meeting_params
      params.require(:few_days_meeting).permit(:name, :start_time, :end_time)
    end
end


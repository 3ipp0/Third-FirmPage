class FewDaysMeeting < ApplicationRecord
	## Other code related to your model lives here
	has_and_belongs_to_many :users
   
end

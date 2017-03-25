class FewDaysMeeting < ApplicationRecord
	## Other code related to your model lives here
	has_and_belongs_to_many :users

	has_attached_file :photo, styles: { medium: "600x350>", thumb: "200x150>" }, default_url: "/images/:style/MissingPost.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
   
end

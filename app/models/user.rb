class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	has_attached_file :resume
	validates_attachment_content_type :resume, :content_type => ["application/pdf","application/msword",
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
            "text/plain"], :message => 'File must be document(doc,docx,pdf,txt) and less than 5MB'

    validates_attachment_size :resume, :less_than => 5.megabytes
	has_and_belongs_to_many :few_days_meetings

  phony_normalize :phone_number, default_country_code: 'UA'
  phony_normalize :phone_number, as: :phone_number_normalized_version, default_country_code: 'UA'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def following_few_days_meeting?(few_days_meeting)
  	few_days_meetings.include?(few_days_meeting)
  end

  def follow_few_days_meeting!(few_days_meeting)
  	few_days_meetings<<few_days_meeting
  end

end

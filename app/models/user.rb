class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	has_and_belongs_to_many :few_days_meetings


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def following_few_days_meeting?(few_days_meeting)
  	few_days_meetings.include?(few_days_meeting)
  end

  def follow_few_days_meeting!(few_days_meeting)
  	few_days_meetings<<few_days_meeting
  end

end

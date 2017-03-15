class Post < ApplicationRecord

	validates :title, presence: true,
					 length: {minimum: 5, maximum: 35}

	has_attached_file :photo, styles: { medium: "600x350>", thumb: "200x150>" }, default_url: "/images/:style/MissingPost.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end

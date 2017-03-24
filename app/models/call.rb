class Call < ApplicationRecord

	validates :phone_number, phone: true
end

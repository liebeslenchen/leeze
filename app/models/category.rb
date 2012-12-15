class Category < ActiveRecord::Base
	attr_accessible :name
	has_many :tour_categories
	has_many :tours, through: :tour_categories

	def to_param
		"#{id}-#{name.parameterize}"
	end
end

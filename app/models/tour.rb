class Tour < ActiveRecord::Base
	attr_accessible :description, :teaser, :title, :url, :category_ids
	has_many :tour_categories
	has_many :categories, through: :tour_categories
	validates :title, :teaser, :description, :url, presence: {message: "Bitte angeben"}
	validates :url, format: %r|^http(s?)://maps.google.de/|
	validates :categories, presence: true
end
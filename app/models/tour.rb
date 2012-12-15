class Tour < ActiveRecord::Base
  attr_accessible :description, :teaser, :title, :url

  has_many :tour_categories
  has_many :categories, through: :tour_categories


  validates :title, :teaser, :description, :url, presence: true
  validates :url, format: %r|^https(s?)://maps.google.de/|
end

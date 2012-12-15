class Tour < ActiveRecord::Base
  attr_accessible :description, :teaser, :title, :url

  validates :title, :teaser, :description, :url, presence: true
  validates :url, format: %r|^https(s?)://maps.google.de/|
end

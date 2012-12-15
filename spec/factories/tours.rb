# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
	factory :tour do
		title "My tour"
		teaser "My teaser"
		description "Interesting description"
		url "http://maps.google.de/"
		categories { [FactoryGirl.build(:category)] }
	end
end
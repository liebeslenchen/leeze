require 'spec_helper'
describe "Tours" do
	context 'Start page' do
		let!(:tour) { FactoryGirl.create(:tour) }
		it 'shows all tours on the start page' do
			visit root_path
			page.should have_content tour.title
		end
	end

	context 'filter' do
		let!(:tour1) { FactoryGirl.create(:tour, title: 'Tour 1') }
		let!(:category1) { tour1.categories.first }
		let!(:tour2) { FactoryGirl.create(:tour, title: 'Tour 2') }
		let!(:category2) { tour2.categories.first }

		it 'allows to select categories' do
			visit tours_path
			click_link category1.name
			page.should have_content tour1.title
			page.should_not have_content tour2.title
		end
	end
end
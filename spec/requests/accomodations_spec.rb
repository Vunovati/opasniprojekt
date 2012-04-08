require 'spec_helper'


describe "Accomodations" do
	
	before do	
		@accomodation = Accomodation.create( :property_type => "House",
			                                 :nightly_rate => 30,
			                                 :accomodates => 1,
			                                 :accomodation_type => "Private room",
			                                 :adress_line => "Antonigasse 23",
			                                 :country => "Austria",
			                                 :city => "Vienna",
			                                 :zip_code => "12345",
			                                 :contact_email => "something@something.com",
			                                 :contact_phone => "38512346789",
			                                 :contact_phone2 => "38512346789",
			                                 :number_of_bathrooms => "2",
			                                 :number_of_bedrooms => "3",
			                                 :number_of_bedrooms => "3",
			                                 :number_of_beds => "4"
			) 
	end

	describe "GET /accomodations" do
		it "display some accomodations" do
			visit accomodations_path
			page.should have_content 'Private room'
			page.should have_content 'Vienna'
			page.should have_content '1'
		end

	end

	describe "GET /accomodations" do
		it "shows accomodations" do
			visit accomodations_path
			page.should have_content 'Private room'
		end
	end


	describe "GET /accomodations/new" do
		it "create a new accomodation" do
			visit new_accomodation_path
			page.select 'House', :from => 'Property type'
			page.select 'Private room', :from => 'Accomodation type'
			fill_in 'Nightly rate', :with => 30
			fill_in 'Accomodates', :with => 1
			fill_in 'Address line', :with => "Antonigasse 2"
			fill_in 'Country', :with => "Austria"
			fill_in 'City', :with => "Vienna"
			fill_in 'Zip code', :with => "12345"
			fill_in 'Contact email', :with => "somethig@something.com"
			fill_in 'Contact phone', :with => "38512346789"
			fill_in 'Secondary contact phone', :with => "38512346789"
			fill_in 'Number of bathrooms', :with => "2"
			fill_in 'Number of bedrooms', :with => "3"
			fill_in 'Number of bedrooms', :with => "3"
			fill_in 'Number of beds', :with => "4"
			click_button 'Create Accomodation'
			page.should have_content 'Antonigasse 2'
		end
	end

	describe "PUT /accomodations" do
		it "go to the add accomodation path" do
			visit accomodations_path
			click_link 'New'

			current_path.should == new_accomodation_path 
		end

		it "go to edit accomodation path" do
			visit accomodations_path
			click_link 'Edit'

			current_path.should == edit_accomodation_path(@accomodation)
			
			find_field('Address line').value.should == 'Antonigasse 23'

			fill_in 'City', :with => 'Zagreb'
			fill_in 'Nightly rate', :with => '25'
			click_button 'Update Accomodation'

			current_path.should == accomodation_path(@accomodation)
			page.should have_content 'Zagreb'
			# find_field('Artist').value.should == 'Black Test'

		end
		it "should not update an empty accomodation" do
			visit accomodations_path
			click_link 'Edit'
			current_path.should == edit_accomodation_path(@accomodation)

			page.select '', :from => 'Property type'
			page.select '', :from => 'Accomodation type'
			fill_in 'Nightly rate', :with => ""
			fill_in 'Accomodates', :with => ""
			fill_in 'Address line', :with => ""
			fill_in 'Country', :with => ""
			fill_in 'City', :with => ""
			fill_in 'Zip code', :with => ""
			fill_in 'Contact email', :with => ""
			fill_in 'Contact phone', :with => ""
			fill_in 'Secondary contact phone', :with => ""
			fill_in 'Number of bathrooms', :with => ""
			fill_in 'Number of bedrooms', :with => ""
			fill_in 'Number of bedrooms', :with => ""
			fill_in 'Number of beds', :with => ""
			click_button 'Update Accomodation'

			current_path.should == edit_accomodation_path(@accomodation)
			page.should have_content 'error'
			# save_and_open_page

		end
	end	

	describe "DELETE /accomodations" do
		it "should delete a accomodation" do
			visit accomodations_path
			find("#accomodation_#{@accomodation.id}").click_link 'Destroy'
			page.should have_content "#{@accomodation.adress_line} #{@accomodation.city} deleted"

			visit accomodations_path
			page.should have_no_content 'Austria'
		end
	end
end

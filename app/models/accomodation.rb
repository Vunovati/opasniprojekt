class Accomodation < ActiveRecord::Base
	has_attached_file :main_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	attr_accessible :property_type, :accomodates, :accomodation_type, :nightly_rate, :adress_line, :country, :city, :zip_code, :contact_email, :contact_phone, :contact_phone2, :pets_allowed, :size, :number_of_bathrooms, :number_of_bedrooms, :number_of_beds, :main_image

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	validates :property_type,        :presence => true
	validates :accomodates,          :presence => true, 
	                                 :numericality => true
	validates :accomodation_type,    :presence => true
	validates :nightly_rate,         :presence => true, 
							         :numericality => true
	validates :country,              :presence => true
	validates :city,                 :presence => true
	validates :contact_email,        :presence => true,
					                 :format     => { :with => email_regex },
					                 :uniqueness => { :case_sensitive => false }
	validates :contact_phone,        :presence => true, 
	                                 :numericality => true, 
	                                 :length => { :within => 7..20 } 				          
	validates :contact_phone2,       :presence => true, 
	                                 :numericality => true, 
	                                 :length => { :within => 7..20 } 				          
	validates :city,                 :presence => true
	validates :number_of_bathrooms,  :presence => true, 
							         :numericality => true
	validates :number_of_bedrooms,   :presence => true, 
							         :numericality => true
	validates :number_of_beds,       :presence => true, 
							         :numericality => true
	validates :adress_line,          :presence => true, :uniqueness => { :case_sensitive => false }

	validates_attachment_presence :main_image


	self.per_page = 10 # number of accomodations paginated
end
# == Schema Information
#
# Table name: accomodations
#
#  id                      :integer         not null, primary key
#  property_type           :string(255)
#  accomodates             :integer
#  accomodation_type       :string(255)
#  nightly_rate            :integer
#  adress_line             :string(255)
#  country                 :string(255)
#  city                    :string(255)
#  zip_code                :integer
#  contact_email           :string(255)
#  contact_phone           :integer
#  contact_phone2          :integer
#  pets_allowed            :boolean
#  size                    :integer
#  number_of_bathrooms     :integer
#  number_of_bedrooms      :integer
#  number_of_beds          :string(255)
#  created_at              :datetime        not null
#  updated_at              :datetime        not null
#  main_image_file_name    :string(255)
#  main_image_content_type :string(255)
#  main_image_file_size    :integer
#  main_image_updated_at   :datetime
#


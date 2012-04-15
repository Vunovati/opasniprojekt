# == Schema Information
#
# Table name: accomodations
#
#  id                  :integer         not null, primary key
#  property_type       :string(255)
#  accomodates         :integer
#  accomodation_type   :string(255)
#  nightly_rate        :integer
#  adress_line         :string(255)
#  country             :string(255)
#  city                :string(255)
#  zip_code            :integer
#  contact_email       :string(255)
#  contact_phone       :integer
#  contact_phone2      :integer
#  pets_allowed        :boolean
#  size                :integer
#  number_of_bathrooms :integer
#  number_of_bedrooms  :integer
#  number_of_beds      :string(255)
#  created_at          :datetime        not null
#  updated_at          :datetime        not null
#

require 'spec_helper'
describe Accomodation do
  pending "add some examples to (or delete) #{__FILE__}"
end


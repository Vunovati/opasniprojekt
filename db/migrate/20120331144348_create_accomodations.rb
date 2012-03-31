class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|
      t.string :property_type
      t.integer :accomodates
      t.string :type
      t.integer :nightly_rate
      t.string :adress_line
      t.string :country
      t.string :city
      t.integer :zip_code
      t.string :contact_email
      t.integer :contact_phone
      t.integer :contact_phone2
      t.boolean :pets_allowed
      t.integer :size
      t.integer :number_of_bathrooms
      t.integer :number_of_bedrooms
      t.string :number_of_beds

      t.timestamps
    end
  end
end

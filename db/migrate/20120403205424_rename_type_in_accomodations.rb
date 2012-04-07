class RenameTypeInAccomodations < ActiveRecord::Migration
  def up
  	rename_column :accomodations, :type, :accomodation_type
  end

  def down
  	rename_column :accomodations, :accomodation_type, :type
  end
end

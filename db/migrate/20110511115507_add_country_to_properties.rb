class AddCountryToProperties < ActiveRecord::Migration
  def self.up
    add_column :properties, :country, :string
  end

  def self.down
    remove_column :properties, :country
  end
end

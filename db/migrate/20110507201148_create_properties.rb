class CreateProperties < ActiveRecord::Migration
  def self.up
    create_table :properties do |t|
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :address4
      t.string :status
      t.datetime :start_date
      t.datetime :end_date
      t.integer :number_of_occupants
      t.string :payment_type
      t.integer :property_id
      t.string :image_url
      t.decimal :price, :precision => 8, :scale => 2
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :properties
  end
end

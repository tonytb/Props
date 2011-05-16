class CreateTenants < ActiveRecord::Migration
  def self.up
    create_table :tenants do |t|
      t.integer :property_id
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :contact_number
      t.date :move_in_date
      t.date :move_out_date
      t.integer :number_of_tenants

      t.timestamps
    end
  end

  def self.down
    drop_table :tenants
  end
end

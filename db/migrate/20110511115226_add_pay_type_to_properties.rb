class AddPayTypeToProperties < ActiveRecord::Migration
  def self.up
    add_column :properties, :pay_type, :string
  end

  def self.down
    remove_column :properties, :pay_type
  end
end

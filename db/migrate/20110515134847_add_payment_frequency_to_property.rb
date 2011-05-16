class AddPaymentFrequencyToProperty < ActiveRecord::Migration
  def self.up
    add_column :properties, :payment_frequency, :string
  end

  def self.down
    remove_column :properties, :payment_frequency
  end
end

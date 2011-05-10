class Property < ActiveRecord::Base
  validates :address1, :address2, :status, :start_date, :end_date, :number_of_occupants, :payment_type, :price, :presence => true
  validates :price, :numericality => { :greater_than_or_equal_to => 0.01 }
  validates :address1, :uniqueness => true
  validates :image_url, :format => {
    :with    => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }
end

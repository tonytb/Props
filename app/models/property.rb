class Property < ActiveRecord::Base
  has_many :tenants
  validates :address1, :address2, :status, :number_of_occupants, :price, :presence => true
  validates :price, :numericality => { :greater_than_or_equal_to => 0.01 }
  validates :address1, :uniqueness => true
  # validates :image_url, :format => {
  #  :with    => %r{\.(gif|jpg|png)$}i,
  #  :message => 'must be a URL for GIF, JPG or PNG image.'
  # }
  
  COUNTRY = [ "Ireland", "United Kingdom" ]
  
  STATUS = [ "Vacant", "Occupied" ]
  
  PAYMENT_TYPE = [ "Direct Debit", "Standing Order", "Cheque", "Cash" ]
  
  PAYMENT_FREQUENCY = [ "Weekly", "Bi-monthly", "Monthly", "Quaterly" ]
end

class Tenant < ActiveRecord::Base
  belongs_to :property
  def validate
    if number_of_tenants > property.number_of_occupants
      errors.add_to_base("You have exceed the number of tenants for this property")
    end
    if property.tenants.size >= property.number_of_occupants
      errors.add_to_base("This property has reached its maximum occupnacy")
    end
  end
end

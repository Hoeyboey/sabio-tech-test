class Customer < ApplicationRecord
  validates :name, :postcode, :contractEndDate, :contractTier, presence: true
  validate :postcode_validation

  def postcode_validation
    unless postcode.length == 6 || postcode.length == 7
      errors.add :postcode, :invalid, message: "This postcode is invalid"
    end
  end
end

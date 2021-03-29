class Device < ApplicationRecord
  belongs_to :customer, optional: true
end

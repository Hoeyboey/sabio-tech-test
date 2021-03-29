class AddCustomerRelationToDevice < ActiveRecord::Migration[6.0]
  def change
    add_column :customer, :devices, :integer
  end
end

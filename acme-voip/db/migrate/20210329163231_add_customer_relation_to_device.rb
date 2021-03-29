class AddCustomerRelationToDevice < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :devices, :integer
  end
end

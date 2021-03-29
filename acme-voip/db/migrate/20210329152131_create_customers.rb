class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :postcode
      t.datetime :contractEndDate
      t.string :contractTier

      t.timestamps
    end
  end
end

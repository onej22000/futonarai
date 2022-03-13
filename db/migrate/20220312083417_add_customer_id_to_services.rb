class AddCustomerIdToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :customer_id, :integer
  end
end

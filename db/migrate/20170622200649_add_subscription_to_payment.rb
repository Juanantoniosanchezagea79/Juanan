class AddSubscriptionToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :subscription, :Boolean
  end
end

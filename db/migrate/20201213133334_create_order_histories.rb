class CreateOrderHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :order_histories do |t|
      t.integer :order_id
      t.text :shipping_address_at
      t.integer :payment_amount
      t.integer :payment_method
      t.integer :billing_information
      t.integer :order_day
      t.timestamps
    end
  end
end

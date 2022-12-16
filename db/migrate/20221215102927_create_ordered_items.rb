class CreateOrderedItems < ActiveRecord::Migration[6.1]
  def change
    create_table :ordered_items do |t|

      t.timestamps

      t.integer :order_id
      t.integer :item_id
      t.integer :amount
      t.integer :price
      t.integer :making_status, default: 0


    end
  end
end

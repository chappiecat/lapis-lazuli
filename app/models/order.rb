class Order < ApplicationRecord

 belongs_to :customer
  has_many :ordered_items
  has_many :items, through: :ordered_items
  enum payment_method: {credit_card: 0, transfer: 1}
  #enum :status, { wait: 0, confilm: 1, making: 2, preparation: 3, shipped: 4 }

  def subtotal
    #items.add_tax_price
  end


end

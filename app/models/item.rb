class Item < ApplicationRecord

   belongs_to :genre
  has_one_attached :image

  has_many :cart_items
  has_many :ordered_items


  #def get_image(width,height)
  # unless image.attached?
  #     file_path = Rails.root.join('app/assets/default-image.jpeg')
  #     image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  #   end
  #   image
 # end

  def get_image(width, height)
  unless image.attached?
  file_path = Rails.root.join('app/assets/images/no_image.jpg')
  image.attach(io: File.open(file_path), filename: 'no_image.jpg', content_type: 'image/jpeg')
  end
  image.variant(resize_to_fit: [width, height]).processed
  end


  before_create :default_image

def default_image
  if !self.image.attached?
    self.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'event_default.png')), filename: 'default-image.png', content_type: 'image/png')
  end
end


  def add_tax_price
    (self.price * 1.10).floor
  end


end

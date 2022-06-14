class Cart < ApplicationRecord

  has_many :cart_items, dependet: :distroy
  has_many :products, through: :cart_items
  belongs_to :user

  validates :user_id, presence: true

end

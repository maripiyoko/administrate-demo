class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates_presence_of :order, :product
  validates :unit_price,
            presence: true,
            numericality: { greater_than_or_equal_to: 0 }
  validates :quantity,
            presence: true,
            numericality: { only_integer: true }
end

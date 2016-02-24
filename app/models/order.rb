class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :line_items

  validates_presence_of :customer
end

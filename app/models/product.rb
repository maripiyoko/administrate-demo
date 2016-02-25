class Product < ActiveRecord::Base
  validates_presence_of :name, :price, :image_url

  acts_as_taggable
  acts_as_taggable_on :category
end

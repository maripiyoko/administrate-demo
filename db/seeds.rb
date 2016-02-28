require 'factory_girl'

Customer.destroy_all

FactoryGirl.create_list(:customer, 50)


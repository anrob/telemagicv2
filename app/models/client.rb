class Client < ActiveRecord::Base
  attr_accessible :address, :address2, :city, :email_address, :first_name, :last_name, :phone_number, :state, :zip
end

class Pin < ActiveRecord::Base
	belongs_to :user
  attr_accessible :amount, :jpin, :used, :user_id, :packagetype, :registration_type
end

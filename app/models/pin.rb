class Pin < ActiveRecord::Base
	belongs_to :user
  attr_accessible :amount, :jpin, :used, :user_id, :packagetype, :registration_type, :frenchisename
  validates :jpin, :presence => true, :uniqueness => true, :length => { :minimum => 15, :maximum => 15, }
end

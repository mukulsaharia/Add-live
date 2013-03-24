class Pin < ActiveRecord::Base
	
  attr_accessible :amount, :jpin, :used, :user_id, :packagetype, :registration_type, :frenchisename
  validates :jpin, :presence => true, :uniqueness => true, :length => { :minimum => 15, :maximum => 15, }

  scope :unused, where(:used => false)
  scope :used, where(:used => true)
  scope :silver, where(:packagetype => "Silver")
  scope :gold, where(:packagetype => "Gold")
  scope :platinum, where(:packagetype => "Platinum")
end

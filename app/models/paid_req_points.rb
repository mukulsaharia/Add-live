class PaidReqPoints < ActiveRecord::Base
  attr_accessible :PaidDate, :paid, :points, :user_id, :tds, :admincharge
  
  scope :unpaid, where(:paid => false)
  scope :paid, where(:paid => true)
end

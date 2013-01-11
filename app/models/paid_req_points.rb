class PaidReqPoints < ActiveRecord::Base
  attr_accessible :PaidDate, :paid, :points, :user_id
end

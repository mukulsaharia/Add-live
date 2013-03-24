class Points < ActiveRecord::Base
  belongs_to :user
  attr_accessible :points, :user_id, :Ads_id, :Referal
  attr_accessor :Ads_id

end

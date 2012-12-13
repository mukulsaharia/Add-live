class Click < ActiveRecord::Base
  attr_accessible :ads_id, :ans, :user_id 
  attr_accessor :ans
end

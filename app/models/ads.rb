class Ads < ActiveRecord::Base
	belongs_to :client
  attr_accessible :amount, :ans, :client_id, :que, :totalclicks, :usedclicks, :orgname, :category
end

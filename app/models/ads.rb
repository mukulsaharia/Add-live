class Ads < ActiveRecord::Base
	belongs_to :client
  attr_accessible :amount, :ans, :client_id, :que, :totalclicks, :usedclicks, :orgname, :category, :photo
   attr_accessor :photo
   has_attached_file :photo
   mount_uploader :photo ,ImageUploader
end

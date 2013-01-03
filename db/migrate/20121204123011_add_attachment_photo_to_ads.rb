class AddAttachmentPhotoToAds < ActiveRecord::Migration
  def self.up
      
  end

  def self.down
    drop_attached_file :ads, :photo
  end
end

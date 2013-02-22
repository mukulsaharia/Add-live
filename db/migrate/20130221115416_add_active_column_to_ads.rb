class AddActiveColumnToAds < ActiveRecord::Migration
  def change
    add_column :ads, :Active, :boolean
    
  end
end

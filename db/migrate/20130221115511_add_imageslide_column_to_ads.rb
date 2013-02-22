class AddImageslideColumnToAds < ActiveRecord::Migration
  def change
    add_column :ads, :Imageslide, :boolean
  end
end

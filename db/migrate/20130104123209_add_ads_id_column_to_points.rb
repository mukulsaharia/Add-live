class AddAdsIdColumnToPoints < ActiveRecord::Migration
  def change
    add_column :points, :Ads_id, :integer
  end
end

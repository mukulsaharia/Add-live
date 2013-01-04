class AddadsIdColumnToPoints < ActiveRecord::Migration
  def change
    add_column :points, :ads_id, :integer
  end
end

class ChangeDataTypeForPointsPoints < ActiveRecord::Migration
  def up
  	change_table :points do |t|
      t.change :points, :float
  	end
  end

  def down
  end
end

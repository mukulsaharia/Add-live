class AddTdsColumnTopaidReqPoints < ActiveRecord::Migration
  
  def change
    add_column :paid_req_points, :tds, :float
  end
end

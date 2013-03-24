class AddAdminchargeColumnTopaidReqPoints < ActiveRecord::Migration
 def change
    add_column :paid_req_points, :admincharge, :float
  end
end

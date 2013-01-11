class CreatePaidReqPoints < ActiveRecord::Migration
  def change
    create_table :paid_req_points do |t|
      t.integer :user_id
      t.float :points
      t.boolean :paid
      t.datetime :PaidDate

      t.timestamps
    end
  end
end

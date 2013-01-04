class AddReferalColumnToPoints < ActiveRecord::Migration
  def change
    add_column :points, :Referal, :boolean, :default => false
  end
end

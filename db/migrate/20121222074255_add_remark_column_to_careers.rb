class AddRemarkColumnToCareers < ActiveRecord::Migration
  def change
    add_column :careers, :remark, :string
  end
end

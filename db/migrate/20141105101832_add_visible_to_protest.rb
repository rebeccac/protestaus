class AddVisibleToProtest < ActiveRecord::Migration
  def change
    add_column :protests, :visible, :boolean
  end
end

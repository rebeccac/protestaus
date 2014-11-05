class ChangeColumn < ActiveRecord::Migration
  def change
     change_column :protests, :visible, :boolean, :default => true
  end
end

class AddDescriptionToProtests < ActiveRecord::Migration
  def change
    add_column :protests, :description, :string
  end
end

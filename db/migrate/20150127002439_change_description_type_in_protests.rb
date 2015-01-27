class ChangeDescriptionTypeInProtests < ActiveRecord::Migration
  def change
     change_column :protests, :description, :text

  end
end

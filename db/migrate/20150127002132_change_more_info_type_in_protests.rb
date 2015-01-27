class ChangeMoreInfoTypeInProtests < ActiveRecord::Migration
  def change
     change_column :protests, :more_info, :text

  end
end

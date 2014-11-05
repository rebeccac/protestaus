class CreateProtests < ActiveRecord::Migration
  def change
    create_table :protests do |t|
      t.string :title
      t.date :date
      t.time :time
      t.string :state
      t.string :starting_location
      t.string :march_route
      t.string :more_info
      t.string :organisation
      t.string :website
      t.string :twitter
      t.string :facebook
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :user

      t.timestamps null: false
    end
  end
end

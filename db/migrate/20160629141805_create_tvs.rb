class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.string :title
      t.string :director
      t.integer :user
      t.string :location

      t.timestamps null: false
    end
  end
end

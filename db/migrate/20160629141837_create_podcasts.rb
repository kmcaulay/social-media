class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :title
      t.integer :user
      t.string :location

      t.timestamps null: false
    end
  end
end

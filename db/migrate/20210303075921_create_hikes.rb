class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :location
      t.text :description
      t.integer :avg_star_rating
      t.string :difficulty

      t.timestamps
    end
  end
end

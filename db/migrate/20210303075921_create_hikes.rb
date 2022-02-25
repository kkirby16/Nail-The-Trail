class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.text :name
      t.text :location
      t.text :description
      t.float :avg_star_rating, default: 0, precision: 3, scale: 2
      t.text :difficulty

      t.timestamps
    end
  end
end

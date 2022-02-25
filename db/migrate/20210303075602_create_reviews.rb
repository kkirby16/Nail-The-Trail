class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :hike_id
      t.text :title
      t.text :description
      t.date :date
      t.integer :star_rating

      t.timestamps
    end
  end
end

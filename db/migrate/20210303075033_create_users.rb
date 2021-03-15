class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :city, default: "unspecified"
      t.text :bio
      t.string :years_hiking
      t.boolean "admin", default: false
      t.string :password_digest

      t.timestamps
    end
  end
end

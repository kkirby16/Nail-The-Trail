class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :city, default: "unspecified"
      t.text :bio, default: "unspecified"
      t.string :years_hiking, default: "unspecified"
      t.string :password_digest

      t.timestamps
    end
  end
end

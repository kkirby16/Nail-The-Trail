class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :username
      t.text :email
      t.text :city, default: "unspecified"
      t.text :bio, default: "unspecified"
      t.text :years_hiking, default: "unspecified"
      t.text :password_digest

      t.timestamps
    end
  end
end

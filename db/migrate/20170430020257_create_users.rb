class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :location
      t.text :skills
      t.text :image
      t.text :email

      t.timestamps
    end
  end
end

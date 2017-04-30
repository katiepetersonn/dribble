class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.text :title
      t.date :date
      t.text :image
      t.integer  "user_id"

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :name
      t.text :post
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end

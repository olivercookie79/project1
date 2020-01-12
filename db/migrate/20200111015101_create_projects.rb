class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.text :title
      t.text :image

      t.timestamps
    end
  end
end

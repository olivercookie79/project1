class CreateRevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :revisions do |t|
      t.text :description
      t.text :media
      t.integer :project_id
      t.text :image

      t.timestamps
    end
  end
end

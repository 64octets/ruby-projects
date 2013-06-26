class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.date :started, null: true
      t.date :finished, null: true
      t.string :url, null: true
      t.string :email, null: true
      t.integer :progress
      t.boolean :active
      t.integer :title_image_id, null: true

      t.timestamps
    end
  end
end

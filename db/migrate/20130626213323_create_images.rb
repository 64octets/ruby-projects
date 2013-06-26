class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :file_name
      t.integer :priority
      t.references :project, index: true

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration[4.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :webpage

      t.timestamps null: false
    end
  end
end

class CreateImprovements < ActiveRecord::Migration[4.2]
  def change
    create_table :improvements do |t|
      t.string :title
      t.string :author
      t.string :principle
      t.text :description
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
  end
end

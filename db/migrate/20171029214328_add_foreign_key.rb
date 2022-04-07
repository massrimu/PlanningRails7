class AddForeignKey < ActiveRecord::Migration[4.2]
  def change
  	add_foreign_key :improvements, :projects, column: :project_id
  end
end

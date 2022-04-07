class AddImprovementForeignKey < ActiveRecord::Migration[4.2]
  def change
  	add_reference :improvements, :projects, index: true
  end
end

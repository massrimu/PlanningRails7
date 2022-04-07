class ChangeDexcriptionFormatInPrinciples < ActiveRecord::Migration[4.2]
  def up
  	change_column :principles, :description, :text
  end

  def down
  	change_column :principles, :description, :string
  end
end

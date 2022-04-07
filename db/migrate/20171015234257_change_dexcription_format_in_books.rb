class ChangeDexcriptionFormatInBooks < ActiveRecord::Migration[4.2]
  def up
  	change_column :books, :description, :text
  end

  def down
  	change_column :books, :description, :string
  end

end

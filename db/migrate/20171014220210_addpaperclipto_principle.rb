class AddpapercliptoPrinciple < ActiveRecord::Migration[4.2]
  def change
  	add_attachment :principles, :image
  end
end

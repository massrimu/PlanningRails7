class AddsortToTiff < ActiveRecord::Migration[7.0]
  def change
     add_column :tiffs, :sort, :integer
  end
end

class CreateTiffs < ActiveRecord::Migration[7.0]
  def change
    create_table :tiffs do |t|
      t.string :title, limit: 100,  :null => false
      t.string :author, limit: 50,  :null => false
      t.string :body, limit: 1000,  :null => false
      t.string :value, limit: 100,  :null => false
    


      t.timestamps
    end
  end
end

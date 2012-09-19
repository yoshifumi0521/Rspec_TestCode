class CreateAuthers < ActiveRecord::Migration
  def change
    create_table :authers do |t|
      t.string :title
      t.text :body
      
      
      t.timestamps
    end
  end
end

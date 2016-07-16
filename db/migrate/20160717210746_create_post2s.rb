class CreatePost2s < ActiveRecord::Migration
  def change
    create_table :post2s do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end

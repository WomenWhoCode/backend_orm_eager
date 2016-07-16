class CreateComment2s < ActiveRecord::Migration
  def change
    create_table :comment2s do |t|
      t.references :post2, index: true, foreign_key: true
      t.text :body

      t.timestamps null: false
    end
  end
end

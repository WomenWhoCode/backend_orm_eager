class CreateComment1s < ActiveRecord::Migration
  def change
    create_table :comment1s do |t|
      t.references :post1, index: true, foreign_key: true
      t.text :body

      t.timestamps null: false
    end
  end
end

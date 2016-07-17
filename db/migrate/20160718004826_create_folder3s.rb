class CreateFolder3s < ActiveRecord::Migration
  def change
    create_table :folder3s do |t|
      t.text :ancestry, index: true
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateFile3s < ActiveRecord::Migration
  def change
    create_table :file3s do |t|
      t.references :folder3, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end

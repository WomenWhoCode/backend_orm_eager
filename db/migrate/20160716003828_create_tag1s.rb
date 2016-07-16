class CreateTag1s < ActiveRecord::Migration
  def change
    create_table :tag1s do |t|
      t.string :tag
    end
  end
end

class CreateComment1sTag1s < ActiveRecord::Migration
  def change
    create_table :comment1s_tag1s, :id => false do |t|
      t.references :comment1, index: true, foreign_key: true
      t.references :tag1, index: true, foreign_key: true
    end
  end
end

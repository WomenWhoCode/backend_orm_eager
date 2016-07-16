class CreateComment1sTag1s < ActiveRecord::Migration
  def change
    create_table :comment1s_tag1s, :id => false do |t|
      t.references :comment1
      t.references :tag1
    end
  end
end

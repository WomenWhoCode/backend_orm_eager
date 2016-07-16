class CreateComment2sTag2s < ActiveRecord::Migration
  def change
    create_table :comment2s_tag2s, :id => false do |t|
      t.references :comment2, index: true, foreign_key: true
      t.references :tag2, index: true, foreign_key: true
    end
  end
end

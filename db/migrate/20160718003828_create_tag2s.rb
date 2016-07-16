class CreateTag2s < ActiveRecord::Migration
  def change
    create_table :tag2s do |t|
      t.string :tag
    end
  end
end

class CreateRawTexts < ActiveRecord::Migration
  def change
    create_table :raw_texts do |t|
      t.text :content
      t.belongs_to :source
      t.belongs_to :interview
      t.timestamps
    end
  end
end

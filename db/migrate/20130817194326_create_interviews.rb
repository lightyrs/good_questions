class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :title
      t.text :description

      t.belongs_to :interview

      t.timestamps
    end
  end
end

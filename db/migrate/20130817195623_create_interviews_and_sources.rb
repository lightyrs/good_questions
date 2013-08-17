class CreateInterviewsAndSources < ActiveRecord::Migration
  def change
    create_table :interviews_sources do |t|
      t.belongs_to :interview
      t.belongs_to :source
    end
  end
end

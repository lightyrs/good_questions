class CreateInterviewsAndPeople < ActiveRecord::Migration
  def change
    create_table :interviews_people do |t|
      t.belongs_to :interview
      t.belongs_to :person
    end
  end
end

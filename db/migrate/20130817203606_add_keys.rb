class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "answers", "interviews", :name => "answers_interview_id_fk"
    add_foreign_key "interviews_people", "interviews", :name => "interviews_people_interview_id_fk"
    add_foreign_key "interviews_people", "people", :name => "interviews_people_person_id_fk"
    add_foreign_key "interviews_sources", "interviews", :name => "interviews_sources_interview_id_fk"
    add_foreign_key "interviews_sources", "sources", :name => "interviews_sources_source_id_fk"
    add_foreign_key "questions", "interviews", :name => "questions_interview_id_fk"
    add_foreign_key "raw_texts", "interviews", :name => "raw_texts_interview_id_fk"
    add_foreign_key "raw_texts", "sources", :name => "raw_texts_source_id_fk"
  end
end

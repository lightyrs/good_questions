# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130817203606) do

  create_table "answers", force: true do |t|
    t.text     "text"
    t.integer  "interview_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interviews", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "interview_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interviews_people", force: true do |t|
    t.integer "interview_id"
    t.integer "person_id"
  end

  create_table "interviews_sources", force: true do |t|
    t.integer "interview_id"
    t.integer "source_id"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "bio_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "text"
    t.integer  "interview_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "raw_texts", force: true do |t|
    t.text     "content"
    t.integer  "source_id"
    t.integer  "interview_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "last_checked"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

  add_foreign_key "answers", "interviews", :name => "answers_interview_id_fk"

  add_foreign_key "interviews_people", "interviews", :name => "interviews_people_interview_id_fk"
  add_foreign_key "interviews_people", "people", :name => "interviews_people_person_id_fk"

  add_foreign_key "interviews_sources", "interviews", :name => "interviews_sources_interview_id_fk"
  add_foreign_key "interviews_sources", "sources", :name => "interviews_sources_source_id_fk"

  add_foreign_key "questions", "interviews", :name => "questions_interview_id_fk"

  add_foreign_key "raw_texts", "interviews", :name => "raw_texts_interview_id_fk"
  add_foreign_key "raw_texts", "sources", :name => "raw_texts_source_id_fk"

end

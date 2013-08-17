class Interview < ActiveRecord::Base

  has_one :raw_text

  belongs_to :publication

  has_many :questions
  has_many :answers

  has_and_belongs_to_many :people
  has_and_belongs_to_many :sources

  acts_as_taggable_on :subjects
end

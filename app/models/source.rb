class Source < ActiveRecord::Base

  has_many :raw_texts

  has_and_belongs_to_many :interviews
end

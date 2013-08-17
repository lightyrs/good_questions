class RawText < ActiveRecord::Base

  belongs_to :interview
  belongs_to :source
end

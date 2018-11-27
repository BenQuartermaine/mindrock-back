class Journal < ApplicationRecord
  belongs_to :assignment
  acts_as_taggable_on :summary_tags
  acts_as_taggable_on :photo_tags
end

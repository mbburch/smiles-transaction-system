class Transfer < ApplicationRecord
  belongs_to :human

  validates_presence_of :smile_count
end

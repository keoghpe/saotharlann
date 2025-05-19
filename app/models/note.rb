class Note < ApplicationRecord
  belongs_to :lab

  validates :content, presence: true
end

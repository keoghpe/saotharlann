class Lab < ApplicationRecord
  has_many :notes, dependent: :destroy

  enum :status, {
    idea: "idea",
    planned: "planned",
    in_progress: "in-progress",
    completed: "completed"
  }
end

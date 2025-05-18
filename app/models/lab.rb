class Lab < ApplicationRecord
  enum :status, {
    idea: "idea",
    planned: "planned",
    in_progress: "in_progress",
    completed: "completed"
  }
end

class Lab < ApplicationRecord
  enum status: {
    idea: "idea",
    planned: "planned",
    in_progress: "in-progress",
    completed: "completed"
  }
end

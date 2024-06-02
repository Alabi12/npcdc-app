class Report < ApplicationRecord
    # Ensure the presence of project_number attribute
    validates :project_number, presence: true
  end
  
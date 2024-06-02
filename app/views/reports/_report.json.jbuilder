json.extract! report, :id, :project_number, :name, :age, :school, :participant_class, :course, :programme, :level, :contact, :created_at, :updated_at
json.url report_url(report, format: :json)

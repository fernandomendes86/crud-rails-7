# frozen_string_literal: true

json.extract! student, :id, :name, :date_of_birth, :team_id, :created_at, :updated_at
json.url student_url(student, format: :json)

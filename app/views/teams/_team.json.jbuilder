# frozen_string_literal: true

json.extract! team, :id, :kind, :description, :created_at, :updated_at
json.url team_url(team, format: :json)

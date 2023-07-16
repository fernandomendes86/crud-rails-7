# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'teams/edit', type: :view do
  let(:team) do
    Team.create!(
      kind: 'MyString',
      description: 'MyText'
    )
  end

  before(:each) do
    assign(:team, team)
  end

  it 'renders the edit team form' do
    render

    assert_select 'form[action=?][method=?]', team_path(team), 'post' do
      assert_select 'input[name=?]', 'team[kind]'

      assert_select 'textarea[name=?]', 'team[description]'
    end
  end
end

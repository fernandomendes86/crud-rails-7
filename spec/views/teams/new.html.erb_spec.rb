# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'teams/new', type: :view do
  before(:each) do
    assign(:team, Team.new(
                    kind: 'MyString',
                    description: 'MyText'
                  ))
  end

  it 'renders new team form' do
    render

    assert_select 'form[action=?][method=?]', teams_path, 'post' do
      assert_select 'input[name=?]', 'team[kind]'

      assert_select 'textarea[name=?]', 'team[description]'
    end
  end
end

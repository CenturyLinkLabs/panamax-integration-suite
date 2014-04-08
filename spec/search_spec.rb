require 'spec_helper.rb'

describe 'Search Workflow' do
  it 'allows users to search for a term' do
    visit('/')

    fill_in 'search_form_query', with: 'wordpress'

    expect(page).to have_content "Wordpress Docker image"
  end
end

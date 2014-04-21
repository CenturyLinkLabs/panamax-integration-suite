require 'spec_helper.rb'

describe 'Search Workflow', :js => true do
  it 'allows users to search for a public registry term', :driver => :webkit do
    visit('/')

    within 'li.search-link' do
      click_on('Search')      
    end 

    expect(current_path).to eq('/search/new')

    fill_in 'search_form_query', with: 'ubuntu'

    expect(page).to have_content "General use Ubuntu base image."
  end

  it 'allows users to search for a local registry term', :driver => :webkit do
    visit('/')

    within 'li.search-link' do
      click_on('Search')      
    end 

    expect(current_path).to eq('/search/new')

    fill_in 'search_form_query', with: 'lapax/tiny-haproxy'

    within 'div.search-result-item.image-result', text: 'Local' do
    	expect(page).to have_content "lapax/tiny-haproxy"
    end

  end

  it 'allows users to search for a local template term', :driver => :webkit do
    visit('/')

    within 'li.search-link' do
      click_on('Search')      
    end 

    expect(current_path).to eq('/search/new')

    fill_in 'search_form_query', with: 'wordpress'

    within 'div.search-result-item.template-result', text: 'Template' do
    	expect(page).to have_content "Wordpress"
    end

  end

end

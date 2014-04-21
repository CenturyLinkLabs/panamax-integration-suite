require 'spec_helper.rb'

describe 'Launch an application' do
  it 'allows users to search for a template term' do
    visit('/')

    within 'li.search-link' do
    	click_on('Search')    	
    end 

    expect(current_path).to eq('/search/new')

    fill_in 'search_form_query', with: 'wordpress'

    within 'form' do
        click_on('Search')
    end
  end

  it 'allows users to launch a template' do
    within 'div.search-result-item.template-result', text: 'Template' do
    	expect(page).to have_content "Wordpress"
    	click_on('Run Template')
    end
    
    expect(page).to have_content 'good job, you created an app'

  end
end
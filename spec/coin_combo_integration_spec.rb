require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the making change process', {:type => :feature}) do
  it('process the user entry of cents and return the coins to make change') do
    visit('/')
    fill_in('cents', :with => 41)
    click_button('Make change')
    expect(page).to have_content('1 quarter')
  end
end

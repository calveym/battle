require 'app'
require 'spec_helper'

feature 'Battle' do

  before :each do
    visit "/"
    fill_in :p1_name, with: 'Mike'
    fill_in :p2_name, with: 'Julio'
    click_button 'Submit!'
  end

  scenario "expect names to be submitted and displayed" do
    expect(page).to have_text "Mike"
    expect(page).to have_text "Julio"
  end

end
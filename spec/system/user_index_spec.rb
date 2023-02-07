require 'rails_helper'

RSpec.describe 'Users index page', type: :system do
  before do
    driven_by(:rack_test)
    @user =  User.create(name: 'Lilly', bio: 'Teacher from Poland.',post_counter: 0)
  end
  it 'should show users names' do
    visit root_path
    expect(page).to have_text('Lilly')
  end
  it 'should show users images' do
    visit root_path
    expect(page).to have_css('div.img-holder')
  end
  it 'should show users posts counters' do
    visit root_path
    expect(page).to have_content("Number Of Posts: #{@user.post_counter}")
  end
  it 'should show users names' do
    visit root_path
    click_on @user.name.to_s
    expect(page).to have_current_path user_path(@user.id)
  end
end

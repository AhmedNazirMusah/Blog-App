require 'rails_helper'

RSpec.describe 'User show page', type: :system do
  before do
    driven_by(:rack_test)
    @user = User.create(name: 'Lilly', post_counter: 0)
    @post = Post.create(title: 'First post', text: 'Another new post', author: @user, comments_counter: 0,
                        likes_counter: 0)
    @post2 = Post.create(title: 'Second post', text: 'Another new post', author: @user, comments_counter: 0,
                         likes_counter: 0)
    @post3 = Post.create(title: 'Third post', text: 'Another new post', author: @user, comments_counter: 0,
                         likes_counter: 0)
  end
  it 'should show the user profile image' do
    visit user_path(@user.id)
    expect(page).to have_css('div.post-card')
  end
  it 'should show the user name' do
    visit user_path(@user.id)
    expect(page).to have_text 'Lilly'
  end
  it 'should show the user posts counter' do
    visit user_path(@user.id)
    expect(page).to have_content("Number Of Posts: #{@user.post_counter}")
  end
  it 'should show the user bio' do
    visit user_path(@user.id)
    expect(page).to have_text @user.bio.to_s
  end
  it 'should show the user last 3 posts' do
    visit user_path(@user.id)
    expect(page).to have_content @post.title.to_s
    expect(page).to have_content @post2.title.to_s
    expect(page).to have_content @post3.title.to_s
  end
  it 'should show see all posts button' do
    visit user_path(@user.id)
    expect(page).to have_content('See all posts')
  end
end

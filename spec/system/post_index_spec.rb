require 'rails_helper'

RSpec.describe 'Post index page', type: :system do
  before do
    driven_by(:rack_test)
    @user = User.create(name: 'Lilly', post_counter: 0)
    @post = Post.create(title: 'First post', text: 'Another new post', author: @user, comments_counter: 0,
                        likes_counter: 0)
    @comment = Comment.create(author: @user, post: @post, text: 'another comment!')
  end

  it 'should show the user comments section' do
    visit user_posts_path(@user.id)
    expect(page).to have_css('div.post-comment')
  end

  it 'should show the user name' do
    visit user_posts_path(@user.id)
    expect(page).to have_text 'Lilly'
  end

  it 'should show the user posts counter' do
    visit user_posts_path(@user.id)
    expect(page).to have_content("Number Of Posts: #{@user.post_counter}")
  end

  it 'should show posts titles' do
    visit user_posts_path(@user.id)
    expect(page).to have_content @post.title.to_s
  end

  it 'should show posts bodies' do
    visit user_posts_path(@user.id)
    expect(page).to have_content @post.text.to_s
  end

  it 'should show posts last comments' do
    visit user_posts_path(@user.id)
    expect(page).to have_content @comment.text.to_s
  end

  it 'should show posts comments number' do
    visit user_posts_path(@user.id)
    expect(page).to have_content "Comments: #{@post.comments_counter}"
  end

  it 'should show posts likes number' do
    visit user_posts_path(@user.id)
    expect(page).to have_content "Likes: #{@post.likes_counter}"
  end

  it 'should show a pagination button' do
    visit user_posts_path(@user.id)
    expect(page).to have_content 'Pagination'
  end
end
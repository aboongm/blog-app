require 'rails_helper'

RSpec.describe Post, type: :model do
    before(:all) do
        @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.', posts_counter: 0)

        @post = Post.new(title: 'Post Title', text: 'Post text', likes_counter: 2, comments_counter: 3, author: @user)
    end

    it "title should be present and not empty" do
        @post.title = nil
        expect(@post).not_to be_valid

        @post.title = ''
        expect(@post).to_not be_valid
    end

    it "title should be present" do
        @post.title = 'Post Title'
        expect(@post).to be_valid
    end
        

    it 'should return comments_counter greater than or equal to 0' do
        @post.comments_counter = -15
        expect(@post).not_to be_valid

        @post.comments_counter = 2
        expect(@post).to be_valid

        @post.comments_counter = 4
        expect(@post).to be_valid
    end

    it 'should return likes_counter greater than or equal to 0' do
        @post.likes_counter = -13
        expect(@post).to_not be_valid

        @post.likes_counter = 0
        expect(@post).to be_valid

        @post.likes_counter = 19
        expect(@post).to be_valid
    end

    it 'should have likes_counter numericaly' do
        @post.likes_counter = 'one'
        expect(@post).to_not be_valid

        @post.likes_counter = 20
        expect(@post).to be_valid
    end    

    it 'should have title max length 250' do
        @post.title = 'a' * 251
        expect(@post).to_not be_valid

        @post.title = 'b' * 250
        expect(@post).to be_valid
    end

    it 'comment_counters should return less than 5 comments' do        
        expect(@post.comments_counter).to be < 5
    end
end
# frozen_string_literal: true

require 'application_system_test_case'

# BEGIN
class PostsTest < ApplicationSystemTestCase
  setup do
    @title = Faker::Lorem.sentence
    @body = Faker::Lorem.paragraph_by_chars(number: 51, supplemental: false)
  end

  test 'visiting to index' do
    visit posts_path

    page.assert_selector('h1', text: 'Posts')
    page.assert_selector('a',  text: 'New Post')
    page.assert_selector('a',  text: 'Home')
    page.assert_selector('a',  text: 'Posts')
  end
end
# END

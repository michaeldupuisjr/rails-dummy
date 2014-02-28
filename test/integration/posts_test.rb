require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest
  test "capybara-extensions extends Capybara::Session" do
    assert_equal true, Capybara::Session.instance_methods.include?(:has_image?)
  end

  test "image of capybara appears on the posts index" do
    Capybara.visit root_path
    assert_equal true, Capybara.page.has_image?(alt: 'capybara')
    assert_equal true, Capybara.page.has_image?(src: 'http://ichef.bbci.co.uk/naturelibrary/images/ic/credit/640x395/c/ca/capybara/capybara_1.jpg')
  end
end

# require 'test_helper'

# module Bloggable
#   class ArticlesControllerTest < ActionDispatch::IntegrationTest
#     include Engine.routes.url_helpers

#     let(:org) { FactoryGirl.create(:org) }
#     let(:article) { FactoryGirl.create(:article) }

#     describe "GET :index" do

#       Given { get articles_url }
#       Then { assert_response 200 }
#     end

#     describe "GET :new" do

#       Given { get new_article_url }
#       Then { assert_response 200 }
#     end

#     describe "PUT :create" do

#       describe "without author" do

#         Given(:article_attrs) { FactoryGirl.attributes_for(:article, bloggable: { bloggable_type: "Org", bloggable_id: org.id }) }

#         Given(:make_request) {
#           post articles_url, params: { article: { text: article.text, title: article.title } }
#         }

#         Then { assert_difference('Article.count') { make_request } }
#       end

#       describe "author" do

#         Given(:user) { FactoryGirl.create(:user) }
#         Given { login_as user }

#         Given(:article_attrs) { FactoryGirl.attributes_for(:article, bloggable: { bloggable_type: "Org", bloggable_id: org.id }) }

#         Given(:make_request) {
#           post articles_url, params: { article: { text: article.text, title: article.title } }
#         }

#         # Then { assert_difference('Article.count') { make_request } }
#       end
#     end
#   end
# end

#       #     assert_difference('Article.count') do
#   #       post articles_url, params: { article: { text: @article.text, title: @article.title } }

#     # end

#   #   test "should create article" do
#   #     assert_difference('Article.count') do
#   #       post articles_url, params: { article: { text: @article.text, title: @article.title } }
#   #     end

#   #     assert_redirected_to article_url(Article.last)
#   #   end

#   #   test "should show article" do
#   #     get article_url(@article)
#   #     assert_response :success
#   #   end

#   #   test "should get edit" do
#   #     get edit_article_url(@article)
#   #     assert_response :success
#   #   end

#   #   test "should update article" do
#   #     patch article_url(@article), params: { article: { text: @article.text, title: @article.title } }
#   #     assert_redirected_to article_url(@article)
#   #   end

#   #   test "should destroy article" do
#   #     assert_difference('Article.count', -1) do
#   #       delete article_url(@article)
#   #     end

#   #     assert_redirected_to articles_url
#   #   end
# #   end
# # end

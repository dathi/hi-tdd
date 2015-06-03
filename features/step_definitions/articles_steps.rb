Given(/^some published articles$/) do
  FactoryGirl.create_list :published_articles, 3
end

Given(/^some unpublished articles$/) do
  FactoryGirl.create_list :unpublished_articles, 3
end

When(/^I ask for articles from the API$/) do
  header "Accept", "application/json"
  get "api/v1/articles"
end

Then(/^I should only receive published articles as JSON$/) do
	
end

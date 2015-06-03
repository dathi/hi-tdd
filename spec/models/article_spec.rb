require 'rails_helper'

RSpec.describe Article, type: :model do
  describe ".published" do
  	before do
  	  FactoryGirl.create_list :published_article, 2
  	  FactoryGirl.create_list :unpublished_article, 1

  	  @published = Article.published
  	end

  	it "only return published articles" do
  	  expect(@published).not_to be_empty
  	  @published.each do |article|
  	  	expect(article).to be_published
  	  end
  	end
  end
end

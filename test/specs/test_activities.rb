require 'minitest_helper'
require 'minitest/autorun'

describe "Activity" do

  before do
    @article = Article.new(:title => 'test')
  end
 
  describe "when asked about an article" do
    it "must be have a saved title" do
      @article.title.must_equal 'test'
    end

    it "must not have a blank title" do
      @article.title.wont_be_empty
    end

    it "won't have a silly title" do
      @article.title.wont_equal 'blah, blah, blah, Ginger'
    end
  end

end

require 'minitest_helper'
require 'minitest/autorun'

describe "Activity" do

  before do
    @article = Article.new(:title => 'test')
  end
 
  # playing with minitest syntax...
  describe "when asked about an article" do
    # sample postivie expectations:
    it "must be have a saved title" do
      @article.title.must_equal 'test'
    end

    it "must have an ariticle of type string" do
      @article.title.must_be_kind_of(String).must_equal true
    end

    it "must be an Article instance" do
      @article.must_be_instance_of(Article)
    end
    it "must match a valid title" do
      @article.title.must_match(/\w+/).must_equal true
    end

    it "must have a title with the letter e in it" do
      @article.title.must_include('e')
    end

    # sample negative expecations
    it "must not have a blank title" do
      @article.title.wont_be_empty
    end

    it "won't have a silly title" do
      @article.title.wont_equal 'blah, blah, blah, Ginger'
    end

    it "won't inclue a reference to politics" do
      @article.title.wont_include('politics')
    end
  end

end

gem 'minitest'
require 'minitest/autorun'

class ArticleTest < MiniTest::Unit::TestCase
  def test_article
    assert true
  end

  def test_article_breaks
    assert false
  end

  def test_this
    # assert true
  end
end

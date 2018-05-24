require "test_helper"

class CommentExtractorTest < Minitest::Test
  def test_that_extract_comment
    code = <<-FOO
def hoge
  # this is comment
  pp"this is test"
end
    FOO
    assert_equal('# this is comment',CommentExtractor.extract(code)[0].text)
  end

  def test_that_extract_specify_comment
    code = <<-FOO
def hoge
  # this is comment
  # this is 2nd comment
  # this is 3rd comment
  pp"this is test"
end
    FOO
    assert_equal('# this is comment',CommentExtractor.extract(code)[0].text)
    assert_equal('# this is 2nd comment',CommentExtractor.extract(code)[1].text)
    assert_equal('# this is 3rd comment',CommentExtractor.extract(code)[2].text)
  end
end

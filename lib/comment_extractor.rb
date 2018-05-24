require 'comment_extractor/version'
require 'parser/current'

module CommentExtractor
  def self.extract(code)
    Parser::CurrentRuby.parse_with_comments(code)[-1]
  end
end

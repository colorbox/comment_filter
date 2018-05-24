require 'comment_filter/version'
require 'parser/current'

module CommentFilter
  def self.extract(code)
    Parser::CurrentRuby.parse_with_comments(code)[-1]
  end
end

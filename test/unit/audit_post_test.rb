require File.dirname(__FILE__) + '/../test_helper'

class AuditPostTest < ActiveSupport::TestCase
  fixtures :audit_posts
  
  def test_fixtures
    assert audit_posts(:hello).valid?
  end
  
  def test_attr_accessible
    # attr_accessible :title, :body
    set = Set.new
    set << "title"
    set << "body"
    assert_equal set, AuditPost.attr_accessible
  end
  
end

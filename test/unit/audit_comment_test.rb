require File.dirname(__FILE__) + '/../test_helper'

class AuditCommentTest < ActiveSupport::TestCase
  fixtures :audit_posts, :audit_comments
  
  def test_fixtures
    assert audit_comments(:return).valid?
  end
  
  def test_attr_accessible
    set = Set.new
    assert_equal set, AuditComment.attr_accessible
  end
end

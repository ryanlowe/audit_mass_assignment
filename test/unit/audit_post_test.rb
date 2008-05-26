require File.dirname(__FILE__) + '/../test_helper'

class AuditPostTest < ActiveSupport::TestCase
  fixtures :audit_posts
  
  def test_fixtures
    assert audit_posts(:hello).valid?
  end
end

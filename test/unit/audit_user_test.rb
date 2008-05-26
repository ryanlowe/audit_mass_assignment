require File.dirname(__FILE__) + '/../test_helper'

class AuditUserTest < ActiveSupport::TestCase
  fixtures :audit_users
  
  def test_fixtures
    assert audit_users(:ryanlowe).valid?
  end
  
  def test_attr_accessible
    # attr_accessible nil
    set = Set.new
    set << ""
    assert_equal set, AuditUser.attr_accessible
  end
  
end

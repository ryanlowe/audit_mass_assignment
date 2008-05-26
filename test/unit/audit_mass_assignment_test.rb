require File.dirname(__FILE__) + '/../test_helper'

class SaveOrRaiseTest < Test::Unit::TestCase

  def test_audit_nil
    assert !AuditMassAssignment.audit(nil)
  end
  
  def test_audit
    assert  AuditMassAssignment.audit(AuditPost)
  end
  
  def test_audit_all
    result, total, failures = AuditMassAssignment.audit_all
    assert_equal ".", result
    assert_equal 1, total
    assert_equal 0, failures
  end
  
end
require File.dirname(__FILE__) + '/../test_helper'

class SaveOrRaiseTest < Test::Unit::TestCase

  def test_audit_nil
    assert !AuditMassAssignment.audit(nil)
  end
  
  def test_audit
    assert  AuditMassAssignment.audit(AuditPost)
    assert !AuditMassAssignment.audit(AuditComment)
  end
  
  def test_audit_all
    result, total, failures = AuditMassAssignment.audit_all
    assert_equal ".F", result
    assert_equal 2, total
    assert_equal 1, failures
  end
  
end
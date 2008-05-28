require File.dirname(__FILE__) + '/../test_helper'

class SaveOrRaiseTest < Test::Unit::TestCase

  def test_audit_nil
    assert !AuditMassAssignment.audit(nil)
  end
  
  def test_audit
    assert  AuditMassAssignment.audit(AuditPost)
    assert !AuditMassAssignment.audit(AuditComment)
    assert  AuditMassAssignment.audit(AuditUser)
  end
  
  def test_audit_all
    class_count, result, failures = AuditMassAssignment.audit_all
    assert_equal 3, class_count
    assert_equal "..F", result
    assert_equal [ AuditComment ], failures
  end
  
end
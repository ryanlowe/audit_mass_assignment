require File.dirname(__FILE__) + '/../test_helper'

class SaveOrRaiseTest < Test::Unit::TestCase

  def test_audit_nil
    assert !AuditMassAssignment.audit(nil)
  end
  
end
class CreateAuditUsers < ActiveRecord::Migration
  def self.up
    create_table :audit_users do |t|
      t.boolean :is_admin
      t.string  :username
      t.string  :email
    end
  end

  def self.down
    drop_table :audit_users
  end
end

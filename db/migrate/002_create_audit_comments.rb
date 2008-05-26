class CreateAuditComments < ActiveRecord::Migration
  def self.up
    create_table :audit_comments do |t|
      t.integer :post_id
      t.text    :body
    end
  end

  def self.down
    drop_table :audit_comments
  end
end

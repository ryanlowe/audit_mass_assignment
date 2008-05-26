class CreateAuditPosts < ActiveRecord::Migration
  def self.up
    create_table :audit_posts do |t|
      t.datetime :hidden_at
      t.string   :title
      t.text     :body
    end
  end

  def self.down
    drop_table :audit_posts
  end
end

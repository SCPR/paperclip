class <%= migration_name %> < ActiveRecord::Migration
  def self.up
<% attachments.each do |attachment| -%>
    add_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_file_name, :string
    add_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_content_type, :string
    add_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_size, :integer
<% end -%>
  end

  def self.down
<% attachments.each do |attachment| -%>
    remove_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_file_name
    remove_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_content_type
    remove_column :<%= class_name.underscore.camelize.tableize %>, :<%= attachment %>_size
<% end -%>
  end
end

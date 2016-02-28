class AddPaperclipToProduct < ActiveRecord::Migration
  def self.up
    remove_column :products, :image_url
    change_table :products do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :products, :image
    add_column :products, :image_url, :string
  end
end

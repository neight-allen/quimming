class AddAttachmentFileToClips < ActiveRecord::Migration[5.1]
  def self.up
    change_table :clips do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :clips, :file
  end
end

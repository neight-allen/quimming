class Clip < ApplicationRecord
	has_attached_file :file
  validates_attachment_content_type :file, content_type: /\Aaudio/

  def self.sample(n)
    count.times.to_a.sample(n).map do |offset|
      offset(offset).limit(1).first
    end
  end
end

class Note < ActiveRecord::Base
has_many :viewers
has_many :readers, through: :viewers, source: :user
belongs_to :user

  def visible_to=(list)
    self.readers = list.split(',').collect do |reader_name|
      User.find_by(name: reader_name.strip)
    end
  end

  def visible_to
    self.readers.collect do |reader|
      reader.name
    end.join(", ")
  end
end

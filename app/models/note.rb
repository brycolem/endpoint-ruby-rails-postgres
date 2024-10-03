class Note < ApplicationRecord
  belongs_to :application

  def readonly?
    true
  end

  def as_json(options = {})
    {
      id: self.id,
      noteText: self.note_text,
      applicationId: self.application_id
    }
  end
end

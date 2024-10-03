class Application < ApplicationRecord
  has_many :notes

  def readonly?
    true
  end

  def as_json(options = {})
    {
      id: self.id,
      employer: self.employer,
      title: self.title,
      link: self.link,
      companyId: self.company_id,
      notes: self.notes.map(&:as_json)
    }
  end
end

class Journal
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  include Mongoid::Timestamps

  embedded_in :kid

  field :held_at, :type => Date
  field :goal
  field :subject
  field :method
  field :outcome

  def display_name
    return "Neuer Lernjournal Eintrag" if new_record?
    "Lernjournal Eintrag vom #{I18n.l(held_at)}"
  end


end
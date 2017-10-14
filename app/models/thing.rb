class Thing < ApplicationRecord
  include ActionView::Helpers::DateHelper

  has_many :doings, dependent: :destroy

  def overdue?
    (
      last_doing&.done_at || Time.at(0)
    ).advance(days: frequency_in_days).past?
  end

  def due_at
    overdue? ? Time.now : last_doing.done_at.advance(days: frequency_in_days)
  end

  def due_string
    if doings.exists?
      if overdue?
        "due #{distance_of_time_in_words Time.now, last_doing.done_at + frequency_in_days.days} ago"
      else
        "due again in #{distance_of_time_in_words Time.now, last_doing.done_at + frequency_in_days.days}"
      end
    else
      "due now"
    end
  end


  def last_done_string
    "Last done #{done_ago} ago"
  end

  def done_ago
    time_ago_in_words(last_doing.done_at)
  end

  def last_doing
    doings.where.not(id: nil).order("done_at desc").limit(1).first
  end
end

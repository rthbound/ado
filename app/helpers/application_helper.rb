module ApplicationHelper
  def timing_info(thing)
    last_doing = thing.doings.order("done_at desc").limit(1).first

    if last_doing.nil?
      "Never been done"
    elsif last_doing.done_at + thing.frequency_in_days.days <= Time.now
      # overdue
      "Due #{time_ago_in_words(last_doing.done_at)} ago"
    else
      # due in future
      "Done #{time_ago_in_words(last_doing.done_at)} ago"
    end
  end
end

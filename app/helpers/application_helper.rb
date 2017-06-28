module ApplicationHelper
  def timing_info(thing)
    last_doing = thing.doings.order("done_at desc").limit(1).first

    if last_doing.done_at + thing.frequency_in_days.days <= Time.now
      # overdue
      content_tag(:td, "#{time_ago_in_words(last_doing.done_at)} ago").concat \
      content_tag(:td, " due #{distance_of_time_in_words Time.now, last_doing.done_at + thing.frequency_in_days.days} ago")
    else
      # due in future
      content_tag(:td, "#{time_ago_in_words(last_doing.done_at)} ago").concat \
      content_tag(:td, " in #{distance_of_time_in_words Time.now, last_doing.done_at + thing.frequency_in_days.days}")
    end
  end
end

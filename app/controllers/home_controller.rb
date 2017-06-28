class HomeController < ApplicationController
  def index
    @things = Thing.includes(:doings).sort_by {|t| t.doings.last&.done_at&.send(:+,t.frequency_in_days.days) || Time.at(0) }
  end
end

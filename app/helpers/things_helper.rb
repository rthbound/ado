module ThingsHelper
  def color(thing)
    thing.overdue? ? 'red' : 'green'
  end
end

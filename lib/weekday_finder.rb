class String
  define_method(:weekday_finder) do

    date_string = self.split('/')
    date = []

    weekdays = {0 => "Sunday", 1 => "Monday", 2 => "Tuesday", 3 => "Wednesday",
    4 => "Thursday", 5 => "Friday", 6 => "Saturday"}

    date_string.each do |num|
      date.push(num.to_i())
    end

    date_format = Time.new(date[2], date[0], date[1])

    weekdays.fetch(date_format.wday())

  end

  define_method(:time_tense) do
    today = Time.new()

    date_string = self.split('/')
    date = []

    date_string.each do |num|
      date.push(num.to_i())
    end

    date_entered = Time.new(date[2], date[0], date[1])

    if today == date_entered
      "is"
    elsif today > date_entered
      "was"
    else
      "will be"
    end

  end

end

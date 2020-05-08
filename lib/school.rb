class School
attr_reader :start_time,
            :hours_in_school_day,
            :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    e = @start_time.to_i + @hours_in_school_day
    #must find a way to seperate that first digit and leave the :00 alone.
    "#{e}:00"
  end
# require 'pry'; binding.pry

  def is_full_time?
    @hours_in_school_day > 4
    # if @hours_in_school_day > 4
    #   true
    # else
    #   false
    # end
  end

  def standard_student_names
    #accumulator?
    standard_student_names = []
    @student_names.each do |n|
      standard_student_names << n.capitalize
       # require 'pry'; binding.pry
    end
    standard_student_names
  end

end

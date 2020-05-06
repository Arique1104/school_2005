class School
attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    @start_time
    #must find a way to seperate that first digit and leave the :00 alone.


  end

  def standard_student_names
    #accumulator?
    # standard_student_names = []
    @student_names.each do |n|
      standard_student_names << n.capitalize
    end
  end

end

## Data
school = { 
   :name => "Best School Ever!!",
   :location => "NYC",
   :instructors => [ 
      {:name=>"Sara", :subject=>"hardware + wearables" },
      {:name=>"Francis", :subject=>"robots"},
      {:name=>"Zahra", :subject=>"photography"}
   ],
   :students => [ 
     {:name => "Brenda", :grade => "A"},
     {:name=>"Eric", :grade => "C"},
     {:name => "Vico", :grade => "D"},
     {:name => "Rushaine", :grade => "B"}
   ]
}

## Object Orientation
class School
  attr_accessor :name, :location, :students, :instructors
  attr_reader :ranking

  SCHOOLS = []

  def initialize(name, location, ranking, students, instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
    SCHOOLS << self
  end
  
  def reset
    SCHOOLS.clear
  end

  def set_rank(rank)
    @ranking = rank
  end

  def add_student(name, grade, semester)
    @students << { name: name, grade: grade, semester: semester }
  end

  def remove_student(name)
    @students.each do |student|
      if student[:name] == name
        
      end
    end
  end
end

## Classes
class Student 
   attr_reader :name, :grade, :semester

   def initialize(name, grade, semester)
     @name = name
     @grade = grade
     @semester = semester
   end
end

class School
  attr_accessor :name, :location, :students, :instructors
  attr_reader :ranking

  def initialize(name, location, ranking, students, instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
    SCHOOLS << self
  end

  def set_rank(rank)
    @ranking = rank
  end

  def add_student(name, grade, semester)
    @students << Student.new(name, grade, semester)
  end

  def find_student(name)
    @students.each do |person|
      if person.name == name
        return person
      end
    end
  end

  def remove_student(name)
    @students.each do |student|
      if student.name == name
        @students.delete(student)    
      end
    end
  end
end
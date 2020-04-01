##Polymorphism using Inheritance
class Subject   #Class Definition
  def book
    puts "Subject book"
  end

  def name(type)
    type.name
  end

  def code(type)
    type.code
end

class Maths < Subject  #Inheritance
  def book
    puts "Maths book"
  end
end

class English < Subject  #Inheritance
  def book
    puts "English book"
  end
end


subject = Subject.new  #Creating object
subject.book()

subject = Maths.new  #Creating different object calling the same function
subject.book()

subject = English.new  #Creating different object calling the same function
subject.book()

## Output:
## Subject book
## Maths book
## English book


##Polymorphism using Duck-Typing
class Physics
  def name
    puts "Physics Subject"
  end

  def code
    puts "Subject code is 114"
  end
end

class Chemistry
  def name
    puts "Chemistry Subject"
  end

  def code
    puts "Subject code is 120"
  end
end

#Creating object to perform Polymorphism
subject= Subject.new
puts "This subject is Physics"
type = Physics.new
subject.name (type)
subject.code (type)

puts "This subject is Chemistry"
type = Chemistry.new
subject.name (type)
subject.code (type)

## Output:
## This subject is Physics
## Physics Subject
## Subject code is 114
## This subject is Chemistry
## Chemistry Subject
## Subject code is 120


##Polymorphism using Decorator Pattern
class French
  def initialize(subject)  #constructor accepting subject as argument
    @subject = subject
  end

  def book                 #sends book message to the subject it receives when constructed
    puts "French Book"
    @subject.book
  end
end

class German
  def initialize(subject)  #constructor accepting subject as argument
    @subject = subject
  end

  def book                 #sends book message to the subject it receives when constructed
    puts "German Book"
    @subject.book
  end
end

#Creating object to perform Polymorphism
puts "French Subject"
subject = Subject.new
French.new(subject).book      #use of decorator

puts "German Subject"
subject = Subject.new
German.new(subject).book      #use of decorator

puts "Both French and German Subjects"
French.new(German.new(subject)).book      #used both decorators to achieve runtime Polymorphism
end


## Output
## French Subject
## French Book
## Subject book
## German Subject
## German Book
## Subject book
## Both French and German Subjects
## French Book
## German Book
## Subject book

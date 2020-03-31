##Polymorphism using Inheritance

# Class Definition
class Subject   
  def book
    puts "Subject book"
  end

  def teacher
    puts "Subject teacher"
  end
end

# Inheritance
class Maths < Subject  #Inheritance
  def book
    puts "Maths book"
  end
end

# Inheritance
class English < Subject  #Inheritance
  def book
    puts "English book"
  end
end

# Creating object of parent class
subject = Subject.new  #Creating object
subject.book()

# Creating child class object calling the same function
subject = Maths.new  
subject.book()

# Creating child class object calling the same function
subject = English.new  
subject.book()


## Outout:
## Subject book
## Maths book
## English book

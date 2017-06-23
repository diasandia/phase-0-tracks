#Breakout - TaskList

class TaskList
  attr_reader :owner
  attr_accessor :due_date

  def initialize(owner, due_date)
    @owner = owner
    @due_date = due_date
    @list = {} #keys: location; values : tasks at each location
  end

  def new_location(location)
    if !@list[location] #white-list the behavior you do want // if @list[location].nil? can also be used
      @list[location] = []
    else
      "puts #{location} is already on the list"
    end
  end

  def add_task(task, location)
    new_location(location)
    if @list[location].include?(task)
      puts "#{task} is already on the list"
    else
      @list[location] << task
    end
  end


  def delete_task(task, location)
    if @list[location].include?(task)
      @list[location].delete(task)
    else
      "#{task} is not on your task list"
    end
  end

  def print_list
    puts "#{owner}'s Task List!"
    puts "Due #{due_date}."
      puts
      @list.each do |location, task|
        if task.length > 0
        puts "At #{location}:"
      task.each do |task|
        puts " - #{task}"
       end
      end
    end
  end

  def is_past_due?(current_day)
    days_of_week = [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ]

    if @list.values.all? {|tasks| tasks.empty? }
        puts "You have no more tasks. Great Job!"
        false
    else
      if days_of_week.index(current_day) < days_of_week.index(due_date)
      puts "You still have time! Get the tasks done!"
      false
      else
        puts "Your list is overdue!!"
        true
      end
    end
  end

  #   past_due = nil

  #   if @list.values.any? { |tasks| tasks != [] }
  #     if days_of_week.index(current_day.capitalize) > days_of_week.index(@due_date.capitalize)
  #       past_due = true
  #     else
  #       p "You've still got time to finish your tasks!"
  #       past_due = false
  #     end
  #   else
  #     p "You have no more tasks. Good job!"
  #     past_due = false
  #   end
  #   p past_due
  # end

end


# p TaskList.new("Diana","Sunday")
p list = TaskList.new("Tom", "Tuesday")
#------ Test as you go
# p list.owner
# p list.due_date
# p list.due_date = "Firday"
# # p list.due_date #firday
list.new_location("Target")
# p list.new_location("Target")
list.add_task("pick up coffee", "Target")
list.add_task("pick up cookies", "Whole Foods")
list.add_task("treats for Ruby", "Whole Foods")
list.delete_task("treats for Ruby", "Whole Foods")
# list.delete_task("pick up cookies", "Whole Foods")
# list.delete_task("pick up coffee", "Target")
list.print_list
list.is_past_due?("Sunday")






#======================================================
# Creating a Task List for an individual who has a lot of errands and tasks to complete and multiple locations or stores to go to in order to complete them.

#---------------------
# RELEASE 1
#---------------------
# Create a class for a Task List.
# All TaskList instances should have an owner and a due date
# passed in on creation. For instance, our owner could be "Tyler"
# and his due date would be "Sunday". The owner should not be
# changeable but you should be able to read it outside of the class.
# The due date should be readable and writeable outside of the class.

#---------------------
#RELEASE 2
#---------------------
# We may have multiple locations to go to in order to complete our
# tasks, for instance we may need to go to Target to pick up batteries.
# Create a list instance variable which can hold the location and tasks at
# each location. It should be empty on creation.

# When we think of a new location we need to go to, we'll need to save
# it in our list and set it up to hold multiple tasks. Create an instance
# method that will save the new location to the list with the ability to
# hold multiple tasks. If the location already exists in our list, notify
# the user that the location is already on the list.

#---------------------
#RELEASE 3
#---------------------
# When we add a new task to the list, we'll need to also say which location
# the task should be completed. Create an instance method to save a task and its
# location to the list. If the location doesn't exist in the list yet,
# we'll need to create it, and then add the task. If the location
# already exists, then we'll need to check if that task already exists
# for the location. Check if that tasks is in our records for the location,
# if it's not, add it. If the task already exists, notify the user
# that the task is already on their list!

#---------------------
#RELEASE 4
#---------------------
# Congrats, you completed a task - cross it off your list! Create an instance
# method to delete a task off it's location records. If the specified
# location includes the task, delete it. If the specified location
# does not include the task, notify the user that they don't
# have that task on their list.

#---------------------
#RELEASE 5
#---------------------
# Man, you sure have a lot to do! Print out your list in a user friendly way, printing each location and then each of the tasks needed to be accomplished there below it. Like the following:
# "At Target:"
# "pick up batteries"
# "get new toothpaste"
# "At pet store:"
# "pick out new chew toy"
# "At post office:"
# "mail Grandma's birthday present"
# "buy new stamps"

# Uh oh, have you done everything on your task list by the due date?
# Create a predicate instance method is_past_due? that uses the current
# day as an argument and checks to see if your task list is past due.
# You'll need to compare the days of the week to each other in some way.
# Don't forget that if you have no tasks on your list, then nothing is past due!







#------------------------------------------
### DSA - Side Notes ###

#Another way to print but not as stylized::
 # def print_list
 #    @list.each do |location, task|
 #      p "At #{location}:"
 #      task.each do |task|
 #        p task
 #      end
 #    end
 #  end

#   def new_location(location)
#     if !is_present?(location)
#       add_location(location)
#     else
#       puts "#{location} is already in our list."
#     end
#   end

# private

#   def get_tasks(location)
#     list[location]
#   end

#   def add_task(item, location)
#     list[location] << item
#   end

#   def is_present?(location)
#     if list[location]
#       true
#     else
#       false
#     end
#   end

#   def is_present?(location)
#     !!list[location]
#   end

#   def add_location(location)
#     list[location] = []
#   end
# end
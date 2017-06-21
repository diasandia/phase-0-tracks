#Breakout - Task List

# Creating a Task List for an individual who has a lot of errands and tasks to complete and multiple locations or stores to go to in order to complete them.

# Release 1
# Create a class for a Task List.
# All TaskList instances should have an owner and a due date passed in on creation. For instance, our owner could be "Tyler" and his due date would be "Sunday". The owner should not be changeable but you should be able to read it outside of the class. The due date should be readable and writeable outside of the class.

class TaskList
  attr_reader :owner
  attr_accessor :due_date

  def initialize(owner, due_date)
    @owner = owner
    @due_date = duedate
    @list = {}
  end

  def new_location(location)
    if


end

hash = {
  "location_name" => ["item1","item2","item3"]
}


p TaskList.new("Diana", "Sunday")


#Release 2
# We may have multiple locations to go to in order to complete our tasks, for instance we may need to go to Target to pick up batteries.Create a list instance variable which can hold the location and tasks at each location. It should be empty on creation.

# When we think of a new location we need to go to, we'll need to save it in our list and set it up to hold multiple tasks. Create an instance method that will save the new location to the list with the ability to hold multiple tasks. If the location already exists in our list, notify the user that the location is already on the list.

#Release 3
# When we add a new task to the list, we'll need to also say which location the task should be completed. Create an instance method to save a task and its location to the list. If the location doesn't exist in the list yet, we'll need to create it, and then add the task. If the location already exists, then we'll need to check if that task already exists for the location. Check if that tasks is in our records for the location, if it's not, add it. If the task already exists, notify the user that the task is already on their list!

#Release 4
# Congrats, you completed a task - cross it off your list! Create an instance method to delete a task off it's location records. If the specified location includes the task, delete it. If the specified location does not include the task, notify the user that they don't have that task on their list.

# Pseudocode
# Create a class for a task list


# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:


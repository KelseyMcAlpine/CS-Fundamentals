# Simulating integer array from other, C like languages (C, C++, C#, Java)
# Native arrays in these languages have only certain methods available.
class RestrictedArray
  # creates a restricted array of default size i.e. 20 or of size passed
  def initialize(*args)
    if args.size == 0 # no size argument passed, assume 20
      @array_size = 1 + rand(20)
    elsif args.size == 1 # create array of size passed
      @array_size = args[0]
    else # more than one argument passed - throw exception
      raise ArgumentError.new("More than 1 arguments passed. Expected 0 or 1 argument.")
    end

    # Composition used instead of Inheritance. Other methods of Array class will
    # not be accessible by consumers of RestrictedArray. Encapsulation allows us
    # to change internal workings later, without impacting other consumers of
    # this class.
    @internal_array = Array.new(@array_size){ |index| index + rand(1..200)}
  end

  # Given the index 'key', returns the value at that index in the restricted array
  def [](key)
    if key >= 0 && key < @array_size
      return @internal_array[key]
    else
      return nil
    end
  end

  # Updates the value at the specified index 'key'
  def []=(key, value)
    if key >= 0 && key < @array_size
      @internal_array[key] = value
    end
  end

  ## Calculates the length of the restricted integer array_size
  def length()
    i = 0

    while self[i] != nil
      i += 1
    end

    return i
  end

  # Prints each integer values in the array
  def print_array(array)
    i = 0

    while array[i] != nil
      print "#{array[i]} "
      i += 1
    end

    puts "\n"
  end

  # Reverses the values in the integer array
  def reverse(array, length) # Ruby
    i = 0
    j = length - 1

    while i < j
      saved_j = array[j]
      array[j] = array[i]
      array[i] = saved_j

      i += 1
      j -= 1
    end
  end

  # For an unsorted array, searches for 'value_to_find'.
  # Returns true if found, false otherwise.
  def search(array, length, value_to_find)
    length.times do |i|
      if array[i] == value_to_find
        return true
      end
    end

    return false
  end

  # Sorts the array in ascending order.
  def sort(array, length)
    length.times do |i|
      min_index = i
      pointer_index = i + 1

      while pointer_index < length
        if array[pointer_index] < array[min_index]
          min_index = pointer_index
        end

        pointer_index += 1
      end

      if min_index != i
        new_min = array[min_index]
        array[min_index] = array[i]
        array[i] = new_min
      end
    end
  end

  # Restricted arrays cannot be resized. So, we follow a convention.
  # Convention: change the value to be deleted with 'SPECIAL_VALUE'
  # Deletes 'value_to_delete' if found in the array. To keep the array size
  # constant, adds an element with 'SPECIAL_VALUE' in the end. Assumes the array
  # to be sorted in ascending order.
  def delete(array, length, value_to_delete)
    length.times do |i|
      if array[i] == value_to_delete
        while i + 1 < length && array[i] != SPECIAL_VALUE
          array[i] = array[i + 1]
          i += 1
        end
        array[i] = SPECIAL_VALUE
        return array
      end
    end
  end

  # Restricted array cannot be resized. So, we workaround by having a convention
  # Convention: replace all values with 'SPECIAL_VALUE'
  # Empties the restricted array by making all values = SPECIAL_VALUE
  def empty(array, length)
    length.times do |i|
      array[i] = SPECIAL_VALUE
    end
  end

  # Finds and returns the largest value element in the array which is not 'SPECIAL_VALUE'
  # Assumes that the array is not sorted.
  def find_largest(array, length)
    largest = array[0]

    length.times do |i|
      if array[i] > largest && array[i] != SPECIAL_VALUE
        largest = array[i]
      end
    end

    return largest
  end

  # Insert value to insert at the correct index into the array assuming the array
  # is sorted in ascending manner.
  # Restricted arrays cannot be resized. Insert only if there is space in the array.
  # (Hint: if there are no elements with 'SPECIAL_VALUE', there is no room to insert)
  # All subsequent elements will need to be moved forward by one index.

  # TBH I struggled with this one a bit - found solution in github repo..
  def insert_ascending(array, length, value_to_insert)
    if array[length - 1] != SPECIAL_VALUE
      return "No room :("
    end

    insert_index_found = false
    length.times do |i|
      if insert_index_found == false && array[i] > value_to_insert
        insert_index_found = true
      end

      if insert_index_found == true
        temp = array[i]
        array[i] = value_to_insert
        value_to_insert = temp
      end

      if value_to_insert == SPECIAL_VALUE
        break
      end
    end
  end
end

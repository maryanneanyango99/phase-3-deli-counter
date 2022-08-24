katz_deli = []

def line array
    length = array.size
    output = "The line is currently: "
    if length == 0
        puts "The line is currently empty."
    else
        array.each_with_index do |name, index|
            if index < length-1
                katz_deli.push("#{index+1}. #{name} ")
            else
                katz_deli.push("#{index+1}. #{name}")
            end
        end
        puts output + katz_deli.join
    end
end

def take_a_number array, customer
    array << customer
    length = array.size
    puts "Welcome, #{customer}. You are number #{length} in line."
end

def now_serving array 
    length = array.size
    if length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array.first}"
        katz_deli.shift
    end
    return array
end

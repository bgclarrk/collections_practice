def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a, b|
        if a == b
            0
        elsif a > b
            -1
        else a < b
            1
        end
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        if a.length == b.length
            0
        elsif a.length < b.length
            -1
        else a.length > b.length
            1
        end
    end
end

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
end

def reverse_array(array)
    array.reverse!
end

def kesha_maker(array)
    array.collect do |word|
        word[2] = "$"
    end
    array
end

def find_a(array)
    a_array = []
    array.each_with_index do |word, i|
        if word[0].downcase == "a"
            a_array << word
        end
    end
    a_array
end

def sum_array(array)
    sum_total = 0
    array.each do |num|
        sum_total += num
    end
    sum_total
end

def add_s(array)
    s_array = []
    array.each_with_index do |word, i|
        if i == 1
            s_array << word
        else
            s_array << word + "s" unless i == 1
        end
    end
    s_array
end
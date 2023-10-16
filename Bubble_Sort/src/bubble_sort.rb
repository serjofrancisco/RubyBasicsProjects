def bubble_sort(array)
    array.each_with_index do |el, i|
        array.each_with_index do |el2, i2|
            if el > el2
                array[i], array[i2] = array[i2], array[i]
            end
        end
    end
    return array.reverse
end

p bubble_sort([4,3,78,2,0,2])
using Test
using Random

"""
Insertion sort algorithm.
This function sorts an array using the insertion sort algorithm.
# Arguments
- `arr::Vector{Int}`: The array to be sorted.
# Examples
julia
arr = [3, 2, 1]
insertion_sort!(arr)
println(arr)  [1, 2, 3]
"""
function insertion_sort!(array::Array{Int, 1})
    for i in 2:length(array)
        key = array[i]
        j = i - 1
        
        # Move elements of array[1..i-1], that are greater than key,
        # to one position ahead of their current position
        while j >= 1 && array[j] > key
            array[j + 1] = array[j]
            j -= 1
        end
        array[j + 1] = key
    end
end

function check_sort(N::Int = 100)
    array = collect(1:N)
    shuffle!(array)
    insertion_sort!(array)
    return array == collect(1:N)
end

export insertion_sort!, check_sort

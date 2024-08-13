module InsertionSort

using Test
using Random

function insertion_sort!(array::Array{Int, 1})
    # Insert your code here
end

function check_sort(N::Int = 100)
    array = collect(1:N)
    shuffle!(array)
    insertion_sort!(array)
    return array == collect(1:N)
end

export insertion_sort!, check_sort
end

import DMUStudent.HW1


#------------- 
# Problem 4
#-------------

# Here is a functional but incorrect answer for the programming question
function f(a::AbstractMatrix{T}, bs::Vector{Vector{T}})::Vector{T} where T
    # Multiply the matrices
    matrices = [a * b for b in bs]
    # Concatenate the matrices horizontally
    concatenated = hcat(matrices...)
    # Find the maximum value in each row
    max_values = [maximum(row) for row in eachrow(concatenated)]
    return max_values
end

# You can can test it yourself with inputs like this
a = [2.0 0.0; 0.0 1.0]
@show a
bs = [[1.0, 2.0], [2.0, 1.0]]
@show bs
result = f(a, bs)
@show result
println("Type of result: ", typeof(result))


# This is how you create the json file to submit
DMUStudent.HW1.evaluate(f, "sebastian.escobar@colorado.edu")
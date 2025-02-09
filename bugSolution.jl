```julia
function my_function(x::Number)
  if x > 0
    return x^2
  elseif x == 0
    return 0
  else
    return -x^2
  end
end

println(my_function(2))
println(my_function(0))
println(my_function(-2))

#Example of how to handle non-numeric inputs
function my_function_robust(x)
  if typeof(x) <: Number
    if x > 0
      return x^2
    elseif x == 0
      return 0
    else
      return -x^2
    end
  else
    error("Input must be a number.")
  end
end

println(my_function_robust(2))
println(my_function_robust(0))
println(my_function_robust(-2))
println(my_function_robust("a"))
```
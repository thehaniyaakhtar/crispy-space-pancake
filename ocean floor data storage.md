# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning
reasons to adopt this approach:
equal distribution of data, there isnt an overload on any one boat.
easy to implement method, doesnt require much to execute

reasons to not adopt this approach:
to run a query is time consuming, it has to be run on every boat.
data related in time/location can be lost when positioned on different boats

## Partitioning by Hour
reasons to adopt this approach:
much easier to run a query
all data correlated in time is kept together
easier to find what is being searched for

reasons to not adopt this approach:
unequal distribution of data as some boats can carry too much of it while others hardly have some based on hours

## Partitioning by Hash Value
reasons to adopt this approach:
equal distribution of data
enables predictable storage

reasons to not adopt this approach:
Observations close in time are stored across different boats, complicating trend analysis

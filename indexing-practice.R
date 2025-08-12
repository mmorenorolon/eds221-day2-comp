#r-py-data-types
#Making vectors

#character vectors
dogs <- c("teddy", "khora", "waffle", "banjo")
class(dogs)
typeof(dogs) #storage model type

#numeric vector
weights <- c(50, 55, 25, 35)
class(weights)
typeof(weights)

#class() is the overall classification and typeof() shows what the values 
#are stored as

#Integer vector
dog_age <- c(5L, 6L, 1L, 7L)
class(dog_age)
typeof(dog_age)

is.numeric(dog_age) 

# What happens when we combine classes
dog_info <- c("teddy", 50, 5L)
class(dog_info)
typeof(dog_info)

# Named elements
dog_food <- c(teddy = "purina",
              khora = "alpo",
              waffle = "fancy feast",
              banjo = "blue diamond") 
class(dog_food)

#Accessing bits of vectors
dog_food[2] #outdated method
dog_food["khora"]
dog_food[1:3] #access three of the vectors

#warmup to for loops
i <- 4 #define variable
dog_food[i] 

#key points:
 # index by Position
 # define positions with variables
 
# Overwrite data
dog_food[1] <- "BURRITOS!" #replace purina with burritos
dog_food

# Matrices
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), 
                    ncol = 2, nrow = 2, byrow = FALSE) 
fish_size #2x2
typeof(fish_size)
class(fish_size)

#Access pieces within a matrix
fish_size[1,2] #one element, row and column
fish_size[,2] #values in second column
fish_size[1,] #values in first row

# Lists
urchins <- list("blue",
                c(1, 2, 3), 
                c("a cat", "a dog"),
                5L)
urchins

#Access data in a list
# indexing into vector
urchins[1] #[1] "blue"
urchins[2] #[1] 1 2 3

#indexing into elements of vectors
urchins[[2]]

#naming a list
tacos <- list(toppings = c("onion", "cilantro", "guacamole"),
              filling = c("beans", "meat", "veggies"),
              price = c(6.75, 8.25, 9.50))

tacos[2]
tacos$filling

#Data frames
fruit <- data.frame(type = c("apple", "banana", "peach"),
                    mass = c(130,  195, 150))
fruit

class(fruit)

#Indexing into data frames
fruit[1,2] #row,column

fruit[1,]
fruit[,2]

#update elements
fruit[2,1] <- "pineapple"

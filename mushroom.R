# Importing Data Set
mushrooms <- read.csv(file="data/mushrooms.csv", stringsAsFactors = TRUE)

# View dataset
view(mushrooms)

# View names of variables in the dataset
names(mushrooms)   

# Get number of rows and columns
dim(mushrooms)    

# View structure of the dataset
str(mushrooms)

# Type of data
class(mushrooms)



# Data Cleaning
# Check for null values
sum(is.na(mushrooms))

# Check for duplicates
sum(duplicated(mushrooms))


# Statistical Analysis
# Summarize each variable
summary(mushrooms)

# Class of mushrooms
table(mushrooms$class)

# Distribution of Mushrooms by Class
classM <- ggplot(mushrooms, aes(x = class, color = class, fill = class)) + geom_bar(position = "stack")
classM

# Relationship between odor and class of mushroom
odor <- ggplot(mushrooms, aes(x = odor, color = class, fill = class)) + geom_bar(position = "stack")
odor

# Relationship between cap surface and class of mushroom
capS <- ggplot(mushrooms, aes(x = cap.surface, color = class, fill = class)) + geom_bar(position = "stack")
capS

# Relationship between cap color and class of mushroom
capC <- ggplot(mushrooms, aes(x = cap.color, color = class, fill = class)) + geom_bar(position = "stack")
capC


# Comparing features to determine mushroom edibility
# Plot cap shape and cap surface
cc = ggplot(mushrooms,aes(x=cap.surface,  
                         y=cap.color, 
                         color=class))
cc + geom_jitter(alpha=0.3) +  
  scale_color_manual(breaks = c('e','p'),
                     values=c('darkgreen','red'))


# Plot spore print and odor
co = ggplot(mushrooms,aes(x=odor,  
                    y=spore.print.color, 
                    color=class))

co + geom_jitter(alpha=0.3) +  
  scale_color_manual(breaks = c('e','p'),
                     values=c('darkgreen','red'))



# Plot spore gill color and cap color
co = ggplot(mushrooms,aes(x=gill.color,  
                          y=cap.color, 
                          color=class))

co + geom_jitter(alpha=0.3) +  
  scale_color_manual(breaks = c('e','p'),
                     values=c('darkgreen','red'))


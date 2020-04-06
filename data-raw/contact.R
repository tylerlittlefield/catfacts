## code to prepare `contact` dataset goes here

x <- read.csv("inst/extdata/contact.csv")
x <- x[c("person", "role", "contact")]
names(x) <- c("Person", "Role", "Contact Information")

saveRDS(x, file = "data/contact.rds")

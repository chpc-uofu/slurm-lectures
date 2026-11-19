if(!require(tidyverse)){
    install.packages("tidyverse")
    library(tidyverse)
}
library('tidyverse')

args=commandArgs(trailingOnly=TRUE)

iris_data<-read.csv(args[1])

iris_data %>%
    ggplot(aes(x=Sepal.Length,y=Sepal.Width,color=Species)) +
    geom_point() +
    labs(x="Sepal Length",y="Sepal Width",title="Sepal Length vs. Sepal Width in Iris Species")

ggsave("IrisData.png", type = "cairo",width=10,height=7)

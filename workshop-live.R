# Workshop info:

library(tidyverse)


interviews_plotting<-read_csv("data_output/interviews_plotting.csv")

head(interviews_plotting)
dim(interviews_plotting)
row(interviews_plotting)

#tell ggplot what data we're using
interview_plot<-ggplot(data=interviews_plotting,
       aes(x=no_membrs,y=number_items))+

#example:
interview_plot +
  geom_line()

#actual
interview_plot +
  geom_point()





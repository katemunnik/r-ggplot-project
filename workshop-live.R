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

#save
ggsave("fig_output/interview_plot.png",interview_plot, width=15, height =10, dpi=350)

#new size
interview_plot +
  geom_jitter(alpha = 0.5, width = 0.2, height = 0.2, size = 4)

#can put the whole thing into () to print the thing on the screen. 

#adding regression lines
interview_plot +
  geom_jitter(aes(color=village), alpha = 0.2, width = 0.2, height = 0.2, size = 4) +
  geom_smooth(method='lm')

#adding regression lines for each village
lms<- interview_plot +
  geom_jitter(aes(color=village), alpha = 0.2, width = 0.2, height = 0.2, size = 4) +
  geom_smooth(aes(color=village),method='lm')
#can we get r2 values printed on the graph?? 

#save
ggsave("fig_output/lms.png", lms)



# https://paleobiodb.org/classic/displayDownloadGenerator
# http://www.ashwinmenon.com/assets/images/tree2.jpg 

library(tidyverse)
library(maps)

dinosTrex <- read_csv("https://paleobiodb.org/data1.2/occs/list.csv?base_name=T.rex&cc=NOA&show=class,coords,loc")

dinosTheropodaUS <- read_csv("https://paleobiodb.org/data1.2/occs/list.csv?base_name=Theropoda&cc=US&state=!Hawaii,Alaska&show=class,coords,loc")

tyranno <- dinosTheropodaUS %>% filter(str_detect(accepted_name, 'Tyranno'))

usa <- map_data("usa")
ggplot(usa) + 
  geom_polygon(aes(x = long, y = lat, group = group), 
               color = "darkgray", fill = "lightgray") +
  coord_map(projection = "mollweide") +
  geom_point(dinosTheropodaUS, mapping = aes(x = lng, y = lat, color = class))

ggplot(usa) + 
  geom_polygon(aes(x = long, y = lat, group = group), 
               color = "darkgray", fill = "lightgray") +
  coord_map(projection = "mollweide") +
  geom_point(tyranno, mapping = aes(x = lng, y = lat, color = accepted_rank))

print.data.frame(dinosTheropodaUS %>% group_by(accepted_name) %>% count() %>% filter(n > 5) %>% arrange(desc(n)))



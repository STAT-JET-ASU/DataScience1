# https://socviz.co/maps.html
# http://eriqande.github.io/rep-res-web/lectures/making-maps-with-R.html
# https://www.latlong.net/

library(tidyverse)
library(maps)

counties <- map_data("county")

teenrate <- read.csv("https://data.cdc.gov/api/views/3h58-x6cd/rows.csv?accessType=DOWNLOAD")
teenrate <- teenrate %>% 
  filter(Year %in% c(2005, 2015)) %>% 
  mutate_if(is.factor, tolower)

dataNC <- left_join(counties, teenrate, by = c("region" = "State", "subregion" = "County")) %>%  
  filter(region == "north carolina") %>% 
  select(FIPSstat = State.FIPS.Code, 
         FIPScnty = County.FIPS.Code, 
         FIPScomb = Combined.FIPS.Code, 
         group = group,
         state = region, 
         county = subregion, 
         lat = lat, 
         lon = long, 
         year = Year,
         rate = Birth.Rate, 
         LCL = Lower.Confidence.Limit, 
         UCL = Upper.Confidence.Limit)

# dataNC <- data %>% 
#   filter(state == "north carolina")

ditch_the_axes <- theme(
  axis.text = element_blank(),
  axis.line = element_blank(),
  axis.ticks = element_blank(),
  panel.border = element_blank(),
  panel.grid = element_blank(),
  axis.title = element_blank())

ggplot(data = dataNC) + 
  geom_polygon(aes(x = lon, 
                   y = lat, 
                   fill = rate, 
                   group = group), 
               color = "white") + 
  coord_fixed() +
  facet_grid(year ~ .) +
  ditch_the_axes + 
  scale_fill_gradient(low = "white", high = "purple", breaks = seq(0,100,10))

# ~~~~~~~~~~~~~~~~~~~~

dataNCnomap <- dataNC %>% 
  group_by(county, year) %>% 
  summarize(rate = mean(rate), LCL = mean(LCL), UCL = mean(UCL))
ratechangeNC <- inner_join(dataNCnomap %>% 
                             filter(year == 2005) %>% 
                             select(county, rate05 = rate), 
                           dataNCnomap %>% 
                             filter(year == 2015) %>% 
                             select(county, rate15 = rate)) %>% 
  mutate(change = rate15 - rate05, pctchange= (rate15 - rate05)/rate05) %>% 
  select(county, change, pctchange)

dataNC <- left_join(dataNC, ratechangeNC)
dataNCnomap <- left_join(dataNCnomap, ratechangeNC)

western <- c("avery",
             "buncombe",
             "cherokee",
             "clay",
             "graham",
             "haywood",
             "henderson",
             "jackson",
             "macon",
             "madison",
             "mcdowell",
             "mitchell",
             "polk",
             "rutherford",
             "swain",
             "transylvania",
             "yancey",
             "watauga")

dataWNC <- filter(dataNC, county %in% western)
dataWNCnomap <- filter(dataNCnomap, county %in% western)

ggplot(data = dataWNC) + 
  geom_polygon(aes(x = lon, 
                   y = lat, 
                   fill = pctchange, 
                   group = group), 
               color = "white") + 
  coord_fixed() +
  ditch_the_axes + 
  scale_fill_gradient(low = "white", high = "purple")

ggplot(dataWNCnomap, aes(x = county, y = rate)) +
         geom_bar(stat = "identity") +
  facet_grid(year ~ .) + 
  coord_flip()

ggplot(dataWNCnomap, aes(x = reorder(county, -change), y = change)) +
  geom_bar(stat = "identity") +
  coord_flip()

dataWNCnomap <- dataWNCnomap %>% 
  gather(stat, value, c("LCL", "rate", "UCL"))

ggplot(dataWNCnomap, aes(value, county)) +
  geom_point() +
  geom_line(aes(group = county)) +
  facet_grid(year ~ .)





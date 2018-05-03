## Written by Carl Boettiger to attempt reproduction of Figure 1 from Dryad archive

colours <- ggthemes::ptol_pal()(2)


library(tidyverse)
download.file("https://datadryad.org/bitstream/handle/10255/dryad.92618/data_deterioration.zip?sequence=1",
              "data_deterioration.zip")
unzip("data_deterioration.zip")

# in .txt file, each column is a time point, each row a replicate
df1 <- "data_deterioration/subset_DF.txt" %>%
  read_table(col_names = FALSE) %>%
  ## "tidy" data: each column is a replicate, time is also column.
  as.matrix() %>% t() %>% as_tibble()  %>%
  rowid_to_column("time") %>%
  ## "tidier": columns are: time, replicate id, concentration under deteriorating environment
  gather(replicate, Deteriorating, -time)


df2 <- "data_deterioration/subset_DF_control.txt" %>%
  read_table(col_names = FALSE) %>%
  as.matrix() %>% t() %>% as_tibble()  %>%
  rowid_to_column("time") %>%
  gather(replicate, Constant, -time)

## Join tables, now columns are:
## time, replicate, environment, and cell concentration (value)
df <- inner_join(df1, df2) %>%
  gather(environment, value, -time, -replicate)

df %>%
  ggplot(aes(time, value, col=environment, group = interaction(replicate, environment))) +
  geom_line(alpha=0.3) +
  scale_color_ptol() +
  geom_vline(aes(xintercept = 15), col="red", alpha = 0.5, lwd = 2) +
  theme(legend.position = c(0.2,0.3), legend.title = element_blank()) +
  ylab("population density")

df %>%
  group_by(time, environment) %>%
  summarise(mean = mean(value),
            cv = sd(value) / mean) %>%
  ggplot(aes(time, cv, col = environment)) + geom_line() +
  geom_vline(aes(xintercept = 15), col="red", alpha = 0.5, lwd = 2) +
  scale_color_ptol() +
  theme(legend.position = c(0.2,.8), legend.title = element_blank())+
  ylab("coefficient of variation")




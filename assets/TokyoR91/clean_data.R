library(tidyverse)

d <- read_csv("./data/nature02403-s2.csv", skip = 10)

#hoge <- d %>%
#  mutate(genus = str_split_fixed(Species, " ", 2)[, 1]) %>%
#  mutate(genus2 = str_sub(genus, 1, 3) %>%
#         str_to_upper) %>%
#  mutate(sp = str_split_fixed(Species, " ", 2)[, 2]) %>%
#  mutate(sp2 = str_sub(sp, 1, 3) %>% str_to_upper) %>%
#  select(Species, genus, genus2, sp, sp2) %>%
#  mutate(sp_code = paste0(genus2, sp2)) %>%
#  mutate(sp_code = ifelse(Species == "Populus tremuloides", paste0(sp_code, "2"), sp_code)) %>%
#  mutate(sp_code = ifelse(Species == "Quercus coccinea", paste0(sp_code, "2"), sp_code))

#d$Species %>% unique %>% length
#hoge$sp_code %>% unique %>% length
#
#hoge2 <- hoge %>%
#  group_by(Species, sp_code) %>%
#  summarize(n = n()) %>%
#  filter(n > 1) %>%
#  ungroup %>%
#  group_by(sp_code) %>%
#  summarize(n = n()) %>%
#  filter(n > 1) %>%
#  pull(sp_code)
#
#
#hoge %>%
#  filter(sp_code %in% hoge2) %>% 
#  arrange(sp_code) %>%
#  as.data.frame


d2 <- d %>%
  mutate(genus = str_split_fixed(Species, " ", 2)[, 1]) %>%
  mutate(genus2 = str_sub(genus, 1, 3) %>%
         str_to_upper) %>%
  mutate(sp = str_split_fixed(Species, " ", 2)[, 2]) %>%
  mutate(sp2 = str_sub(sp, 1, 3) %>% str_to_upper) %>%
  mutate(sp_code = paste0(genus2, sp2)) %>%
  mutate(sp_code = ifelse(Species == "Populus tremuloides", paste0(sp_code, "2"), sp_code)) %>%
  mutate(sp_code = ifelse(Species == "Quercus coccinea", paste0(sp_code, "2"), sp_code)) %>%
  rename(DE = `Decid/E'green`) %>%
  mutate(LL = 10 ^`log LL` %>% round(3)) %>%
  mutate(LMA = 10 ^`log LMA` %>% round(3)) %>%
  mutate(Nmass = 10 ^`log Nmass` %>% round(3)) %>%
  mutate(Pmass = 10 ^`log Pmass` %>% round(3)) %>%
  mutate(Amass = 10 ^`log Amass` %>% round(3)) %>%
  mutate(Rdmass = 10 ^`log Rdmass`) %>%
  mutate(Narea = 10 ^`log Narea` %>% round(3)) %>%
  mutate(Parea = 10 ^`log Parea` %>% round(3)) %>%
  mutate(Aarea = 10 ^`log Aarea` %>% round(3)) %>%
  mutate(Rdarea = 10 ^`log Rdarea`) %>%
  #dplyr::select(Species, DE, LL, LMA,
  #              Nmass, Pmass, Amass, Rdmass,
  #             # Nmass, Pmass, Amass, Rdmass)
  #              Narea, Parea, Aarea, Rdarea)
  dplyr::select(sp_code, DE, LMA,
                Nmass, Aarea, Rdmass)

d2 %>%
  write_csv("./data/leaf_data.csv")

# needs row name
mtcars %>%
  write.csv("./data/mtcars.csv")

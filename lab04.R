library(tidyverse)
library(leaps)
library(purrr)
library(janitor)


sgemm <-read.csv(file.choose())

glimpse(sgemm)

set.seed(47)

my_sample <- sample(1:nrow(sgemm),500)

sgemm1 <- sgemm %>% janitor::clean_names() %>% 
        mutate(logrun1 = log(run1_ms)) %>% 
        select(-run1_ms,-run2_ms,-run3_ms,-run4_ms)

glimpse(sgemm1)
sgemm1 <- sgemm1[my_sample,]




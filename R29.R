#종교 유무에 따른 이혼율 1
welfare$religion <-ifelse(welfare$religion ==1, "yes", "no")
table(welfare$religion)
class(welfare$marriage)
table(welfare$marriage)
welfare$group_marriage <-ifelse(welfare$marriage ==1, "marriage",ifelse(welfare$marriage ==3, "divorce", NA))
table(welfare$group_marriage)
table(is.na(welfare$group_marriage))
qplot(welfare$group_marriage)
religion_marriage <-welfare %>% filter(!is.na(group_marriage)) %>% group_by(religion, group_marriage) %>%summarise(  n = n()) %>% mutate(tot_group =sum(n)) %>% mutate(pct =round(n/tot_group*100, 1)) 
religion_marriage
+religion_marriage <-welfare %>%filter(!is.na(group_marriage)) %>%count(religion, group_marriage) %>%group_by(religion) %>%mutate(pct =round(n/sum(n)*100, 1))
religion_marriage
divorce <-religion_marriage %>%filter(group_marriage =="divorce") %>%select(religion, pct)

ggplot(data =divorce, aes(x =religion, y =pct)) +geom_col()
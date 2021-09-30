#연령대 및 성별 월급 차이 
sex_income<-welfare%>%filter(!is.na(income))%>%group_by(ageg, sex) %>%summarise(mean_income =mean(income))
ggplot(data =sex_income, aes(x =ageg, y =mean_income, fill =sex)) +geom_col() +scale_x_discrete(limits =c("young", "middle", "old"))
ggplot(data =sex_income, aes(x =ageg, y =mean_income, fill =sex)) +geom_col(position ="dodge") +scale_x_discrete(limits =c("young", "middle", "old"))
sex_age <-welfare %>% filter(!is.na(income)) %>%group_by(age, sex) %>%summarise(mean_income = mean(income))
head(sex_age)
ggplot(data =sex_age, aes(x =age, y =mean_income, col =sex)) +geom_line()
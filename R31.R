#지역별 연령대 비율 1
class(welfare$code_region) / table(welfare$code_region)
list_region <- data.frame(code_region = c(1:7),
region = c("서울","수도권(인천/경기)","부산/경남/울산","대구/경북","대전/충남","강원/충북","광주/전남/전북/제주도")) 
welfare <- left_join(welfare, list_region, id = "code_region")  
welfare %>%   select(code_region, region) %>%   head 
region_ageg <- welfare %>%   group_by(region, ageg) %>%   summarise(n = n()) %>%   mutate(tot_group = sum(n)) %>%   mutate(pct = round(n/tot_group*100, 2)) 
+region_ageg <- welfare %>%   count(region, ageg) %>%   group_by(region) %>%   mutate(pct = round(n/sum(n)*100, 2))
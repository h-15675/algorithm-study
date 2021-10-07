#지역별 연령대 비율 2
ggplot(data = region_ageg, aes(x = region, y = pct, fill = ageg)) +   geom_col() +   coord_flip()
list_order_old <- region_ageg %>%   filter(ageg == "old") %>%   arrange(pct) 
ggplot(data = region_ageg, aes(x = region,  y = pct, fill = ageg)) +   geom_col() +   coord_flip() +   scale_x_discrete(limits = order) 
region_ageg$ageg <- factor(region_ageg$ageg, level = c("old", "middle", "young")) 
ggplot(data = region_ageg, aes(x = region,  y = pct, fill = ageg)) +   geom_col() +   coord_flip() +   scale_x_discrete(limits = order) 
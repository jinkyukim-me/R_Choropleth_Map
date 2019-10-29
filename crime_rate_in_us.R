
library(ggiraphExtra)


str(USArrests)
head(USArrests)

library(tibble)

crime <- rownames_to_column(USArrests, var = "state")
crime$state <- tolower(crime$state)

str(crime)

library(ggplot2)
states_map <- map_data("state")
str(states_map)

ggChoropleth(data = crime,         # ������ ǥ���� ������
             aes(fill = Murder,    # ����� ǥ���� ����
                 map_id = state),  # ���� ���� ����
             map = states_map)     # ���� ������

ggChoropleth(data = crime,         # ������ ǥ���� ������
             aes(fill = Murder,    # ����� ǥ���� ����
                 map_id = state),  # ���� ���� ����
             map = states_map,     # ���� ������
             interactive = T)      # ���ͷ�Ƽ��
setwd("C:/dev/R_Choropleth_Map")
write.csv(crime, "crime_data.csv")

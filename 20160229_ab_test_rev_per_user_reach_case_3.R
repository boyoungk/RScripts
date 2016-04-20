setwd("~/Analysis/ABTest")

rev_per_user <- read.csv('20160229_ab_test_rev_per_user.csv', header=T)
head(rev_per_user)

rev_per_user_started_case3 <-rev_per_user[rev_per_user$started_case3_cd=="Started Case 3",] 

wilcox.test(purchase_amt ~ ab_test_id, data= rev_per_user_started_case3)
t.test(purchase_amt ~ ab_test_id, data= rev_per_user_started_case3)
t.test(purchase_amt ~ ab_test_id, data= rev_per_user_started_case3, alternative = "less")

(72.62939-59.73527)/59.73527 ## 0.2158544

mean(rev_per_user_started_case3$purchase_amt[rev_per_user_started_case3$ab_test_id==59])
mean(rev_per_user_started_case3$purchase_amt[rev_per_user_started_case3$ab_test_id==60])

sd(rev_per_user_started_case3$purchase_amt[rev_per_user_started_case3$ab_test_id==59])
sd(rev_per_user_started_case3$purchase_amt[rev_per_user_started_case3$ab_test_id==60])

min(rev_per_user_started_case3$purchase_amt[rev_per_user_started_case3$ab_test_id==59])
min(rev_per_user_started_case3$purchase_amt[rev_per_user_started_case3$ab_test_id==60])

max(rev_per_user_started_case3$purchase_amt[rev_per_user_started_case3$ab_test_id==59])
max(rev_per_user_started_case3$purchase_amt[rev_per_user_started_case3$ab_test_id==60])


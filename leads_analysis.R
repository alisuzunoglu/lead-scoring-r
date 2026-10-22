# Exploratory lead scoring analysis using a public dataset.
# The three traits were chosen after looking at all leads,
# so the practice and hidden split is not an untouched test.
# The website time cutoff in the split analysis uses practice leads only.
# It is unknown when each fact was recorded, so real use is not validated.

# 1. Initial exploration on all leads
leads <- read.csv("~/Leads X Education.csv")
dim(leads)
table(leads$Converted)
mean(leads$Converted)

png("time_on_website_boxplot.png", width = 800, height = 600)
boxplot(Total.Time.Spent.on.Website ~ Converted, data = leads)
dev.off()

rate_by_origin <- tapply(leads$Converted, leads$Lead.Origin, mean)
big_groups <- rate_by_origin[c("API", "Landing Page Submission", "Lead Add Form")]
png("lead_origin_barplot.png", width = 800, height = 600)
barplot(big_groups)
dev.off()

rate_by_occupation <- tapply(leads$Converted, leads$What.is.your.current.occupation, mean)
png("occupation_barplot.png", width = 800, height = 600)
barplot(rate_by_occupation, cex.names = 0.7)
dev.off()

# Exploration only: 248 is the median time on website across all leads.
leads$time_point <- ifelse(leads$Total.Time.Spent.on.Website > 248, 1, 0)
leads$sms_point <- ifelse(leads$Last.Activity == "SMS Sent", 1, 0)
leads$professional_point <- ifelse(leads$What.is.your.current.occupation == "Working Professional", 1, 0)
leads$score <- leads$time_point + leads$sms_point + leads$professional_point

rate_by_score <- tapply(leads$Converted, leads$score, mean)
png("lead_score_barplot.png", width = 800, height = 600)
barplot(rate_by_score)
dev.off()

# 2. Exploratory split: practice leads and hidden leads
set.seed(42)
number_of_test_leads <- round(0.3 * nrow(leads))   # 30 in 100 leads (2,772)
test_rows <- sample(nrow(leads), number_of_test_leads)
test_leads <- leads[test_rows, ]
learn_leads <- leads[-test_rows, ]

cutoff_time <- median(learn_leads$Total.Time.Spent.on.Website)

learn_leads$time_point <- ifelse(learn_leads$Total.Time.Spent.on.Website > cutoff_time, 1, 0)
learn_leads$sms_point <- ifelse(learn_leads$Last.Activity == "SMS Sent", 1, 0)
learn_leads$professional_point <- ifelse(learn_leads$What.is.your.current.occupation == "Working Professional", 1, 0)
learn_leads$score <- learn_leads$time_point + learn_leads$sms_point + learn_leads$professional_point

test_leads$time_point <- ifelse(test_leads$Total.Time.Spent.on.Website > cutoff_time, 1, 0)
test_leads$sms_point <- ifelse(test_leads$Last.Activity == "SMS Sent", 1, 0)
test_leads$professional_point <- ifelse(test_leads$What.is.your.current.occupation == "Working Professional", 1, 0)
test_leads$score <- test_leads$time_point + test_leads$sms_point + test_leads$professional_point

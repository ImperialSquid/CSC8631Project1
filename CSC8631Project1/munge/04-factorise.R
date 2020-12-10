


for (df_name in ls(pattern = "archetype_[0-9]")) {
  temp_df = get(df_name)
  
  temp_df$archetype = factor(temp_df$archetype, 
                             levels = unique(get(paste0("archetype_", 
                                                        c(3:7)))$archetype))
  
  assign(df_name, temp_df)
}

for (df_name in ls(pattern = "enrolments_[0-9]")) {
  temp_df = get(df_name)
  
  temp_df$role = factor(temp_df$role, 
                        levels = unique(get(paste0("enrolments_", 
                                                   c(1:7)))$role))
  temp_df$gender = factor(temp_df$gender, 
                        levels = unique(get(paste0("enrolments_", 
                                                   c(1:7)))$gender))
  temp_df$country = factor(temp_df$country, 
                        levels = unique(get(paste0("enrolments_", 
                                                   c(1:7)))$country))
  temp_df$age_range = factor(temp_df$age_range, 
                        levels = unique(get(paste0("enrolments_", 
                                                   c(1:7)))$age_range))
  temp_df$highest_education_level = factor(temp_df$highest_education_level, 
                        levels = unique(get(paste0("enrolments_", 
                                                   c(1:7)))$highest_education_level))
  temp_df$employment_status = factor(temp_df$employment_status, 
                        levels = unique(get(paste0("enrolments_", 
                                                   c(1:7)))$employment_status))
  temp_df$employment_area = factor(temp_df$employment_area, 
                        levels = unique(get(paste0("enrolments_", 
                                                   c(1:7)))$employment_area))
  temp_df$detected_country = factor(temp_df$detected_country, 
                        levels = unique(get(paste0("enrolments_", 
                                                   c(1:7)))$detected_country))
  
  
  assign(df_name, temp_df)
}

leaving_levels = c("I donâ€™t have enough time", "I prefer not to say", 
                   "The course wasnâ€™t what I expected", 
                   "The course required more time than I realised", "Other", 
                   "The course wonâ€™t help me reach my goals", 
                   "The course was too easy", "The course was too hard")
leaving_labels = c("I don't have enough time", "I prefer not to say", 
                   "The course wasn't what I expected", 
                   "The course required more time than I realised", "Other", 
                   "The course won't help me reach my goals", 
                   "The course was too easy", "The course was too hard")
for (df_name in ls(pattern = "leaving_[0-9]")) {
  temp_df = get(df_name)

  temp_df$leaving_reason = factor(temp_df$leaving_reason, labels = leaving_labels)

  assign(df_name, temp_df)
}

for (df_name in ls(pattern = "members_[0-9]")) {
  temp_df = get(df_name)

  temp_df$team_role = factor(temp_df$team_role,
                             levels = unique(get(paste0("members_",
                                                        c(2:7)))$team_role))
  temp_df$user_role = factor(temp_df$user_role,
                             levels = unique(get(paste0("members_",
                                                        c(2:7)))$user_role))

  assign(df_name, temp_df)
}

rm(temp_df)
rm(df_name)
rm(leaving_labels)
rm(leaving_levels)
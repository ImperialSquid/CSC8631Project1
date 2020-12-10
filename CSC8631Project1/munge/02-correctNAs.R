for (df_name in ls(pattern = "enrolments_[0-9]")) {
  temp_df = get(df_name)
  
  temp_df$unenrolled_at[temp_df$unenrolled_at == ""] = NA
  temp_df$fully_participated_at[temp_df$fully_participated_at == ""] = NA
  temp_df$purchased_statement_at[temp_df$purchased_statement_at == ""] = NA
  temp_df$gender[temp_df$gender == "Unknown"] = NA
  temp_df$country[temp_df$country == "Unknown"] = NA
  temp_df$age_range[temp_df$age_range == "Unknown"] = NA
  temp_df$highest_education_level[temp_df$highest_education_level == "Unknown"] = NA
  temp_df$employment_status[temp_df$employment_status == "Unknown"] = NA
  temp_df$employment_area[temp_df$employment_area == "Unknown"] = NA
  temp_df$detected_country[temp_df$detected_country == "--"] = NA
  
  assign(df_name, temp_df)
}


for (df_name in ls(pattern = "leaving_[0-9]")) {
  temp_df = get(df_name)
  
  temp_df$last_completed_step_at[temp_df$last_completed_step_at == ""] = NA
  
  assign(df_name, temp_df)
}


for (df_name in ls(pattern = "qresponses_[0-9]")) {
  temp_df = get(df_name)
  
  temp_df$submitted_at[temp_df$submitted_at == ""] = NA
  
  assign(df_name, temp_df)
}


for (df_name in ls(pattern = "sactivity_[0-9]")) {
  temp_df = get(df_name)
  
  temp_df$first_visited_at[temp_df$first_visited_at == ""] = NA
  temp_df$last_completed_at[temp_df$last_completed_at == ""] = NA
  
  assign(df_name, temp_df)
}


for (df_name in ls(pattern = "sentiments_7[0-9]")) {
  temp_df = get(df_name)
  
  temp_df$reason[temp_df$reason == ""] = NA
  
  assign(df_name, temp_df)
}
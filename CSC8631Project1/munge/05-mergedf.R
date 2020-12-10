for (i in 1:7) {
  enrol_df = get(paste0("enrolments_",i))
  qresp_df = get(paste0("qresponses_",i))
  
  new_df = merge(x = enrol_df, y = qresp_df, by.x = "learner_id", by.y = "learner_id")
  new_df_trim = new_df[colnames(new_df)[c(1,7,8,9,10,11,12,13,14,22)]]
  
  assign(paste0("enrolmentsandresponses_",i), new_df_trim)
}

rm(enrol_df)
rm(qresp_df)
rm(new_df)
rm(new_df_trim)
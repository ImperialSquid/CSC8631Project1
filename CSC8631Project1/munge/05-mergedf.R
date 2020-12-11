for (i in 1:7) {
  enrol_df = get(paste0("enrolments_",i))
  qresp_df = get(paste0("qresponses_",i))
  
  new_df = merge(x = enrol_df, y = qresp_df, by.x = "learner_id", by.y = "learner_id")
  new_df_trim = new_df[colnames(new_df)[c(1,7,14,22)]]
  new_df_trim = cbind(new_df_trim, data.frame(session = i))
  
  assign(paste0("enANDqr_",i), new_df_trim)
}

enANDqr_all = rbind(
  enANDqr_1,
  enANDqr_2,
  enANDqr_3,
  enANDqr_4,
  enANDqr_5,
  enANDqr_6,
  enANDqr_7
)


rm(enrol_df)
rm(qresp_df)
rm(new_df)
rm(new_df_trim)

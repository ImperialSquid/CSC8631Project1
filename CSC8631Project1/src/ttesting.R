for (i in 1:7){
  m_percents = c()
  f_percents = c()
  
  df = get(paste0("enANDqr_", i))
  
  for (q in unique(df$quiz_question)) {
    m_total = length(df$correct[na.omit(df$quiz_question == q & df$gender == "male")])
    m_corr = sum(df$correct[na.omit(df$quiz_question == q & df$gender == "male")] == "true")
    m_percents = c(m_percents, m_corr/m_total)
    
    f_total = length(df$correct[na.omit(df$quiz_question == q & df$gender == "female")])
    f_corr = sum(df$correct[na.omit(df$quiz_question == q & df$gender == "female")] == "true")
    f_percents = c(f_percents, f_corr/f_total)
  }
  
  t = t.test(x=m_percents, y=f_percents)
  print(paste(t$estimate[1], t$estimate[2], t$statistic, t$p.value))
}

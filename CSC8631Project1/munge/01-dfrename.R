new_names = list("archetype.survey.responses" = "archetype",
                 "enrolments" = "enrolments",
                 "leaving.survey.responses" = "leaving",
                 "question.response" = "qresponses",
                 "step.activity" = "sactivity",
                 "team.members" = "members",
                 "video.stats" = "vidstats",
                 "weekly.sentiment.survey.responses" = "sentiments")

for (varib in ls()) {
  if (grepl("cyber", varib)) {
    varib_num = substr(varib, start = 16, stop = 16)
    varib_name = new_names[[substr(varib, start = 18, stop = nchar(varib))]]
    
    assign(paste(varib_name, varib_num, sep = "_"), get(varib), envir = .GlobalEnv)
  }
}

rm(list = ls(pattern = ".*cyber.*"))
rm(varib)
rm(varib_name)
rm(varib_num)
rm(new_names)



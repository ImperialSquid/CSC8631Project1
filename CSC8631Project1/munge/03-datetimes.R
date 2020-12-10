print("NOTE: THIS FILE DOES NOTHING DUE TO MASSIVE LAG ATM, REINSTATING PENDING USEFULNESS")


# for (df_name in ls(pattern = "archetype_[0-9]")) {
#   temp_df = get(df_name)
#   if (nrow(temp_df) > 0){
#     for (i in 1:nrow(temp_df)){
#       temp_df[i,"responded_at_posix"] = as.POSIXct(as.character(temp_df[i,"responded_at"]),
#                                                   format = "%F %T UTC",
#                                                   tz = "GMT")
#     }
#     temp_df = relocate(temp_df, "responded_at_posix", .after = "responded_at")
#     temp_df = select(temp_df, -c("responded_at"))
#   }
#   assign(df_name, temp_df)
# }
#
#
# for (df_name in ls(pattern = "enrolments_[0-9]")) {
#   temp_df = get(df_name)
#   if (nrow(temp_df) > 0){
#     for (i in 1:nrow(temp_df)){
#       temp_df[i,"enrolled_at_posix"] = as.POSIXct(as.character(temp_df[i,"enrolled_at"]),
#                                                    format = "%F %T UTC",
#                                                    tz = "GMT")
#       temp_df[i,"unenrolled_at_posix"] = as.POSIXct(as.character(temp_df[i,"unenrolled_at"]),
#                                                     format = "%F %T UTC",
#                                                     tz = "GMT")
#       temp_df[i,"fully_participated_at_posix"] = as.POSIXct(as.character(temp_df[i,"fully_participated_at"]),
#                                                              format = "%F %T UTC",
#                                                              tz = "GMT")
#
#       temp_df[i,"purchased_statement_at_posix"] = as.POSIXct(as.character(temp_df[i,"purchased_statement_at"]),
#                                                              format = "%F %T UTC",
#                                                              tz = "GMT")
#     }
#     temp_df = relocate(temp_df, "enrolled_at_posix",
#                        .after = "enrolled_at")
#     temp_df = relocate(temp_df, "unenrolled_at_posix",
#                        .after = "unenrolled_at")
#     temp_df = relocate(temp_df, "fully_participated_at_posix",
#                        .after = "fully_participated_at")
#     temp_df = relocate(temp_df, "purchased_statement_at_posix",
#                        .after = "purchased_statement_at")
#     temp_df = select(temp_df, -c("enrolled_at","unenrolled_at",
#                                  "fully_participated_at","purchased_statement_at"))
#   }
#   assign(df_name, temp_df)
# }
#
#
# for (df_name in ls(pattern = "leaving_[0-9]")) {
#   temp_df = get(df_name)
#   if (nrow(temp_df) > 0){
#     for (i in 1:nrow(temp_df)){
#       temp_df[i,"left_at_posix"] = as.POSIXct(as.character(temp_df[i,"left_at"]),
#                                                              format = "%F %T UTC",
#                                                              tz = "GMT")
#       temp_df[i,"last_completed_step_at_posix"] = as.POSIXct(as.character(temp_df[i,"last_completed_step_at"]),
#                                               format = "%F %T UTC",
#                                               tz = "GMT")
#     }
#     temp_df = select(temp_df, -c("left_at","last_completed_step_at"))
#   }
#   assign(df_name, temp_df)
# }
#
#
# for (df_name in ls(pattern = "qresponses_[0-9]")) {
#   temp_df = get(df_name)
#   if (nrow(temp_df) > 0){
#     for (i in 1:nrow(temp_df)){
#       temp_df[i,"submitted_at_posix"] = as.POSIXct(as.character(temp_df[i,"submitted_at"]),
#                                               format = "%F %T UTC",
#                                               tz = "GMT")
#     }
#     temp_df = select(temp_df, -c("submitted_at"))
#   }
#   assign(df_name, temp_df)
# }
#
#
# for (df_name in ls(pattern = "sactivity_[0-9]")) {
#   temp_df = get(df_name)
#   if (nrow(temp_df) > 0){
#     for (i in 1:nrow(temp_df)){
#       temp_df[i,"first_visited_at_posix"] = as.POSIXct(as.character(temp_df[i,"first_visited_at"]),
#                                               format = "%F %T UTC",
#                                               tz = "GMT")
#       temp_df[i,"last_completed_at_posix"] = as.POSIXct(as.character(temp_df[i,"last_completed_at"]),
#                                                              format = "%F %T UTC",
#                                                              tz = "GMT")
#     }
#     temp_df = select(temp_df, -c("first_visited_at","last_completed_at"))
#   }
#   assign(df_name, temp_df)
# }
#
#
# for (df_name in ls(pattern = "sentiments_[0-9]")) {
#   temp_df = get(df_name)
#   if (nrow(temp_df) > 0){
#     for (i in 1:nrow(temp_df)){
#       temp_df[i,"responded_at_posix"] = as.POSIXct(as.character(temp_df[i,"responded_at"]),
#                                                    format = "%F %T UTC",
#                                                    tz = "GMT")
#     }
#     temp_df = select(temp_df, -c("responded_at"))
#   }
#   assign(df_name, temp_df)
# }
#
#

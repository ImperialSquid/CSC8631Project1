labels = c(
  "1" = "S 1",
  "2" = "S 2",
  "3" = "S 3",
  "4" = "S 4",
  "5" = "S 5",
  "6" = "S 6",
  "7" = "S 7"
)

enANDqr_all %>%
  filter(!is.na(gender)) %>%
  filter(gender == "male" | gender == "female") %>%
  ggplot() +
    geom_bar(aes(x = factor(gender), fill = correct), position = "fill") +
    facet_grid(rows = vars(session), labeller = labeller(session = labels)) +
    labs(x = "Gender of Participant", y = "Percentage Correct Answers to Quiz Questions",
         title = "Quiz Question Performance of Participants \nover the Seven Sessions",
         fill = "") +
    scale_x_discrete(labels = c("M","F")) +
    scale_y_continuous(breaks = seq(0,1,by=0.2),labels = paste0(seq(0,100,by=20), "%") ) +
    scale_fill_manual(values = c("#FF3333", "#33FF99"), labels = c("Incorrect", "Correct")) +
    coord_flip() +
    guides(fill = guide_legend(reverse = TRUE)) +
    theme_bw() +
    theme(legend.position = "bottom")

last_plot()

online_learning <- data.frame(
  Student_ID = c("L01","L02","L03","L04","L05","L06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Course = c("R","R","SQL","R","R","SQL"),
  Study_Time = c(3.5,4.2,2.0,5.0,2.5,4.0),
  Videos_Watched = c(12,15,8,18,9,14),
  Quiz_Score = c(78,85,65,92,70,88),
  Login_Date = c("2025-01-05","2025-01-05",
                 "2025-02-08","2025-02-08",
                 "2025-03-12","2025-03-12")
)

print(online_learning)
symbols(
  online_learning$Study_Time,
  online_learning$Quiz_Score,
  circles = online_learning$Videos_Watched/5,
  inches = 0.3,
  bg = "lightblue",
  main = "Study Time vs Quiz Score",
  xlab = "Study Time (hrs)",
  ylab = "Quiz Score"
)

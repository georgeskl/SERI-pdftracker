# run once
#install.packages("pdftools")
# install.packages("git2r")
# install.packages("here")

library(pdftools)
# library(git2r)
library(here)

# repo <- repository()
# config(repo, user.name="georgeskl", user.email="georgesjklein@gmail.com")

# download latest Q&A and Factsheet
download.file("https://www.sbfi.admin.ch/dam/sbfi/it/dokumente/2020/01/qa-h-europa.pdf.download.pdf/QA-Horizon-Europe_E.pdf", "QA-Horizon-Europe_E.pdf")
download.file("https://www.sbfi.admin.ch/dam/sbfi/en/dokumente/2019/02/horizon-europe.pdf.download.pdf/Fact-sheet_Horizon_en.pdf", "Fact-sheet_Horizon_en.pdf")

qa_text <- pdf_text("QA-Horizon-Europe_E.pdf")
writeLines(qa_text, here("data", "QA-Horizon-Europe_E.txt"))

factsheet_text <- pdf_text("Fact-sheet_Horizon_en.pdf")
writeLines(factsheet_text, here("data", "Fact-sheet_Horizon_en.txt"))

# commiting changes
#add(repo, path = "data/QA-Horizon-Europe_E.txt")
#add(repo, path = "data/Fact-sheet_Horizon_en.txt")

# needs a tryCatch
#commit(repo, message = "Updated with R")
#push(repo, "origin", "refs/heads/main")

install.packages("pdftools")
install.packages("git2r")

library(pdftools)
library(git2r)

# download latest Q&A and Factsheet
download.file("https://www.sbfi.admin.ch/dam/sbfi/it/dokumente/2020/01/qa-h-europa.pdf.download.pdf/QA-Horizon-Europe_E.pdf", "QA-Horizon-Europe_E.pdf")
download.file("https://www.sbfi.admin.ch/dam/sbfi/en/dokumente/2019/02/horizon-europe.pdf.download.pdf/Fact-sheet_Horizon_en.pdf", "Fact-sheet_Horizon_en.pdf")

text = pdf_text("QA-Horizon-Europe_E.pdf")
text = pdf_text("QA-Horizon-Europe_E.pdf")


qa_text <- pdf_text("QA-Horizon-Europe_E.pdf")
writeLines(qa_text, "QA-Horizon-Europe_E.txt")

factsheet_text <- pdf_text("Fact-sheet_Horizon_en.pdf")
writeLines(factsheet_text, "Fact-sheet_Horizon_en.txt")

# commiting changes
add(path = "QA-Horizon-Europe_E.txt")
add(path = "Fact-sheet_Horizon_en.txt")

commit(message = "Updated with R")

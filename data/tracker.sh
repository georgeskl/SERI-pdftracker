#!/bin/bash
echo 'download latest Q&A and Factsheet';
curl -s https://www.sbfi.admin.ch/dam/sbfi/it/dokumente/2020/01/qa-h-europa.pdf.download.pdf/QA-Horizon-Europe_E.pdf \
	> QA-Horizon-Europe_E.pdf;
curl -s https://www.sbfi.admin.ch/dam/sbfi/en/dokumente/2019/02/horizon-europe.pdf.download.pdf/Fact-sheet_Horizon_en.pdf \
	> Fact-sheet_Horizon_en.pdf;

curl -s https://www.sbfi.admin.ch/dam/sbfi/en/dokumente/2021/07/financial_guarantee_for_swiss_participants.pdf.download.pdf/2021-07-13_Financial_Guarantee_for_Swiss_participants.pdf \
	> Guarantee.pdf;
curl -s https://www.sbfi.admin.ch/dam/sbfi/en/dokumente/2021/07/financial-guarantee-swiss-participants-erc-starting-and-consolidator-grants-2021.pdf.download.pdf/2021-07-20%20SERI%20Funding%20of%20ERC%20StG,%20CoG.pdf \
	> GuaranteeERC.pdf;
echo 'convert PDFs to txt';
pdftotext QA-Horizon-Europe_E.pdf;
pdftotext Fact-sheet_Horizon_en.pdf;
pdftotext Guarantee.pdf;
pdftotext GuaranteeERC.pdf;
echo 'rm pdf';
rm QA-Horizon-Europe_E.pdf;
rm Fact-sheet_Horizon_en.pdf;
rm Guarantee.pdf;
rm GuaranteeERC.pdf;
echo 'commiting no matter what';
git add .;
git commit -m "ran get-QA.sh";
git push origin master;

# EOSC 448, Directed Study, January-April 2022
This study aimed to determine the effect of stubble conditions on snow retention in the Canadian Prairies. The models used are a set of linear regression equations from Pomeroy & Gray (1994), and computation was done using MATLAB. This project is organized into four main folders and a 'run everything' file: Data_codes, Downloaded_Data, Model_codes, figures, and run_everything.m

run_everything: Runs the model codes and uploads data in the correct order. Separated into four sections: 1) clear and close data and figures, 2) run the file (models.m) that computes deltaTRAN and deltaSUB (includes uploading all required data), 3) filter deltaTRAN and deltaSUB by month, calculate averages for deltaTRAN and deltaSUB as well as input variables, and plot avererages for deltaTRAN and deltaSUB and input variables, 4) files used to answer study goals (can be commented in and out). To run this project, I usually commented out which files in section 4 that I do not want to look at and then run run_everything

Data_codes: upload and filter data downloaded from ERA5. The filtered RH and temp data has been saved and uploaded into Downloaded_Data, so the only required files from Data_codes are upload_all and upload_data.

Downloaded_Data: includes three files:
1) saved from edited: filtered and downloaded ERA5 inputs for the model
2) Prairie_Border: shape file to plot outline of the Canadian Prairie region
3) Provinces: link to the website that has the shape file for the provincial outline. The file used in the project was under the title 
'Provinces/Territories, Cartographic Boundary File - 2016 Census'

Model_codes: files that run the regression model, calculate and plot averages, calculate and plot areas of high and low validity, and find areas where stubble is most efffective. These are all in section 4 of run_everything.

figures: resulting figures, used in final report

Pomeroy, J. W., & Gray, D. M. (1994). Sensitivity of snow relocation and sublimation to climate and surface vegetation. Sensitivity of 
Snow Relocation and Sublimation to Climate and Surface Vegetation, 223, 213–225. 
http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.719.9487&rep=rep1&type=pdf


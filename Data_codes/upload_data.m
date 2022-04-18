%upload data

original_data = netcdf.open('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\full_data_monthly.nc'); %open raw downloaded data
initial_info = ncinfo('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\full_data_monthly.nc'); %raw data information
addpath 'C:\Users\sarah\Desktop\Project\Files\Downloaded_Data\saved from edited'
%un-comment to see description of data
%ncdisp('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\full_data_monthly.nc')

%assign variables
% windspeed_wrong = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\full_data_monthly.nc', 'si10');
% 
% %correcting era data https://www.frontiersin.org/articles/10.3389/fenvs.2019.00129/full
% Bias = 0.22 - 0.22*windspeed_wrong; 
% windspeed = windspeed_wrong - Bias;
load('windspeed')

% snowdepth_m = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\full_data_monthly.nc', 'sd');
% snowdepth = snowdepth_m.*1000;
load('snowdepth')
%%
% snowfall_m = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\full_data_monthly.nc', 'sf');
% snowfall_swe = snowfall_m.*1000; %convert to mm SWE from m SWE\

%This parameter is accumulated over a particular time period which depends 
%on the data extracted. For the monthly averaged reanalysis and the monthly 
%averaged ensemble members, the accumulation period is 1 day.
%convert from single day values to full month
% daysinmonth_oneyear = [31 28 31 30 31 30 31 31 30 31 30 31];
% daysinmonth = [daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear...
%     daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear...
%     daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear...
%     daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear...
%     daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear...
%     daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear...
%     daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear...
%     daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear...
%     daysinmonth_oneyear daysinmonth_oneyear daysinmonth_oneyear];
% 
% for i = 1:length(daysinmonth);
%     snowfall(:,:,i) = snowfall_swe(:,:,i)*daysinmonth(i);
% end
load('snowfall')
%%

%latitude and longitude
lon = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\full_data_monthly.nc','longitude');  
lat = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\full_data_monthly.nc','latitude') ; 

nlat = length(lat);
nlon = length(lon);

%time in hours since 1900
time_hrs1900 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\full_data_monthly.nc','time') ;
%%
%organize time so it's easier to read/undesrtand
time = datenum(1900,1,1,double(time_hrs1900),0,0); %convert to yr month day hrs min sec
[year, month, day] = datevec(time); %create vectors for y m d

%%
%get prairie outline
%filename = 'C:\users\sarah\Desktop\Project\Files\Downloaded_Data\Prairie_Border\gmannppr.shp';
prairie_shape = shaperead('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\Prairie_Border\gmannppr.shp');
x = [prairie_shape.X];
y = [prairie_shape.Y];
info = shapeinfo('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\Prairie_Border\gmannppr.shp');
proj = info.CoordinateReferenceSystem;
[latplot,lonplot] = projinv(proj,x,y);
lonplot(end) = [];
latplot(end) = [];
%%
provincial_borders = shaperead('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\Provinces\lpr_000b16a_e.shp');
x = [provincial_borders.X];
y = [provincial_borders.Y];
info = shapeinfo('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\Provinces\lpr_000b16a_e.shp')
proj_prov = info.CoordinateReferenceSystem
[latprovinces,lonprovinces] = projinv(proj_prov,x,y);
%lonplot(end) = [];
%latplot(end) = [];
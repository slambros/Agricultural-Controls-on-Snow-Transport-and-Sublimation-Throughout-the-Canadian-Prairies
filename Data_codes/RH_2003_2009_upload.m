%RH 03 to 09
RH_03_09_info = ncinfo('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_09.nc');
original_data_RH_03_09 = netcdf.open('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_09.nc');
%ncdisp('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_09.nc')

% lon_RH_03_09 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_09.nc','longitude');  
% lat_RH_03_09 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_09.nc','latitude') ; 
time_hrs1900_RH_03_09 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_09.nc','time') ;
RH_03_09 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_09.nc', 'r');

%organize time so it's easier to read/undesrtand
time_RH_03_09 = datenum(1900,1,1,double(time_hrs1900_RH_03_09),0,0); %convert to yr month day hrs min sec
[year_RH09, month_RH09, day_RH09, hours_RH09] = datevec(time_RH_03_09); %create vectors for y m d
%%
%% filter
nlat = length(lat);
nlon = length(lon);

ndays = length(hours_RH09)/24;
nmonths = 12*7; %13; %number of bomths from 90 to 02

%https://www.epochconverter.com/days/2022
RH_daily_09 = zeros(nlon,nlat,ndays);
RH_monthly_09 = zeros(nlon,nlat,nmonths);

year_start_days = [1,32,60,91,121,152,182,213,244,274,305,335];
year_end_days = [31,59,90,120,151,181,212,243,273,304,334,365];

start_days = [year_start_days (year_start_days+365) (year_start_days+2*365)... %11 years
    (year_start_days+3*365) (year_start_days+4*365) (year_start_days+5*365)...
    (year_start_days+6*365)]; %off by two days, presumably due to leap years?

end_days = [year_end_days (year_end_days+365) (year_end_days+2*365)...
    (year_end_days+3*365) (year_end_days+4*365) (year_end_days+5*365)...
    (year_end_days+6*365)]; %off by three days, presumably due to leap years?

for j_lat= 1:nlat
    for k_lon = 1:nlon
        for numdays = 1:ndays; %going through every day
            start_hour = (numdays-1)*24+1; %first hour of day
            end_hour = start_hour+23; %lasst hour of day
            rh_day = RH_03_09(k_lon,j_lat,start_hour:end_hour); %temperature per hour throughout day
           
            rhmaxday = max(rh_day); %maximum temperature of the day
            rhmax_daily_09(k_lon,j_lat,numdays) = rhmaxday; %maximum temperature of that day for the location
            
            rhminday = min(rh_day); %minimum temperature of the day
            rhmin_daily_09(k_lon,j_lat,numdays) = rhminday; %minimum temperature of that day for the location
        end
        %at this point I should have a lat by lon by day array that has the
        %highest temperature of the day recorded for every day in the
        %dataset. should. lol
        %and one for lowest
        
        for nummonths = 1:nmonths; %sort by month now
            
            start_day = start_days(nummonths); %first day of month
            end_day = end_days(nummonths); %last day of month
            
            rh_max_daily_all_month = rhmax_daily_09(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            rh_min_daily_all_month = rhmin_daily_09(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            
            rhmean_maxmonth = mean(rh_max_daily_all_month); %average of max temps per day - monthly mean
            rhmean_max_monthly_09(k_lon,j_lat,nummonths) = rhmean_maxmonth; %mean monthly temp of max temp per day for the location
            
            rhmean_minmonth = mean(rh_min_daily_all_month); %average of min temps per day - monthly mean
            rhmean_min_monthly_09(k_lon,j_lat,nummonths) = rhmean_minmonth; %mean monthly temp of min temp per day for the location
        end
    end
end
clear RH_03_09
clear RH_daily_09


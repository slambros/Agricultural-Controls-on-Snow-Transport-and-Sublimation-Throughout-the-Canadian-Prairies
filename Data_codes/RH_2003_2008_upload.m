%RH 85 to 90

RH_03_08_info = ncinfo('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_08.nc');
original_data_RH_03_08 = netcdf.open('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_08.nc');
% %ncdisp('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_09.nc')
% lon_RH_03_08 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_08.nc','longitude');  
% lat_RH_03_08 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_08.nc','latitude') ; 


T_2m = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_08.nc', 't2m');
Td_2m = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_08.nc', 'd2m');

a1 = 611.21;
a3 = 17.502;
a4 = 32.19;
T0 = 273.16;

time_hrs1900_RH_03_08 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_03_08.nc','time') ;
% %organize time so it's easier to read/undesrtand
time_RH_03_08 = datenum(1900,1,1,double(time_hrs1900_RH_03_08),0,0); %convert to yr month day hrs min sec
[year_RH08, month_RH08, day_RH08, hours_RH08] = datevec(time_RH_03_08); %create vectors for y m d
 %% filter
nlat = length(lat);
nlon = length(lon);
ndays = length(hours_RH08)/24;
nhours = length(hours_RH08);
nmonths = 12*6; %13; %number of bomths from 08 to 08 
% %https://www.epochconverter.com/days/2082
RH_daily_08 = zeros(nlon,nlat,ndays);
RH_monthly_08 = zeros(nlon,nlat,nmonths);

year_start_days = [1,32,60,91,121,152,182,213,244,274,305,335];
year_end_days = [31,59,90,120,151,181,212,243,273,304,334,365];

start_days = [year_start_days (year_start_days+365) (year_start_days+2*365)... %11 years
    (year_start_days+3*365) (year_start_days+4*365) (year_start_days+5*365)]; 

end_days = [year_end_days (year_end_days+365) (year_end_days+2*365)...
    (year_end_days+3*365) (year_end_days+4*365) (year_end_days+5*365)];

RH_03_08 = zeros(nlon,nlat,ndays);

for j_lat= 1:nlat
    for k_lon = 1:nlon
        for numhrs = 1:nhours; 
esat_T(k_lon,j_lat,numhrs) = a1*exp(a3*((T_2m(k_lon,j_lat,numhrs) - T0)/(T_2m(k_lon,j_lat,numhrs) - a4))); 
esat_Td(k_lon,j_lat,numhrs) = a1*exp(a3*((Td_2m(k_lon,j_lat,numhrs) - T0)/(Td_2m(k_lon,j_lat,numhrs) - a4)));
RH_03_08(k_lon,j_lat,numhrs) = 100*esat_Td(k_lon,j_lat,numhrs)/esat_T(k_lon,j_lat,numhrs);
        end
    end
end

for j_lat= 1:nlat
    for k_lon = 1:nlon
        for numdays = 1:ndays; %going through every day

            start_hour = (numdays-1)*24+1; %first hour of day
            end_hour = start_hour+23; %lasst hour of day
            rh_day = RH_03_08(k_lon,j_lat,start_hour:end_hour); %temperature per hour throughout day
           
            rhmaxday = max(rh_day); %maximum temperature of the day
            rhmax_daily_08(k_lon,j_lat,numdays) = rhmaxday; %maximum temperature of that day for the location
            
            rhminday = min(rh_day); %minimum temperature of the day
            rhmin_daily_08(k_lon,j_lat,numdays) = rhminday; %minimum temperature of that day for the location
        end
        
        for nummonths = 1:nmonths; %sort by month now
            
            start_day = start_days(nummonths); %first day of month
            end_day = end_days(nummonths); %last day of month
            
            rh_max_daily_all_month = rhmax_daily_08(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            rh_min_daily_all_month = rhmin_daily_08(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            
            rhmean_maxmonth = mean(rh_max_daily_all_month); %average of max temps per day - monthly mean
            rhmean_max_monthly_08(k_lon,j_lat,nummonths) = rhmean_maxmonth; %mean monthly temp of max temp per day for the location
            
            rhmean_minmonth = mean(rh_min_daily_all_month); %average of min temps per day - monthly mean
            rhmean_min_monthly_08(k_lon,j_lat,nummonths) = rhmean_minmonth; %mean monthly temp of min temp per day for the location
        end
    end
end
clear esat_T
clear esat_Td
clear T_2m
clear Td_2m
clear RH_03_08
clear RH_daily_08
%RH 85 to 90

RH_15_20_info = ncinfo('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_15_20.nc');
original_data_RH_15_20 = netcdf.open('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_15_20.nc');
% %ncdisp('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_15_15.nc')
% lon_RH_15_14 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_15_14.nc','longitude');  
% lat_RH_15_14 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_15_14.nc','latitude') ; 


T_2m = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_15_20.nc', 't2m');
Td_2m = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_15_20.nc', 'd2m');

a1 = 611.21;
a3 = 17.502;
a4 = 32.19;
T0 = 273.16;

time_hrs1900_RH_15_20 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\RH_15_20.nc','time') ;
% %organize time so it's easier to read/undesrtand
time_RH_15_20 = datenum(1900,1,1,double(time_hrs1900_RH_15_20),0,0); %convert to yr month day hrs min sec
[year_RH20, month_RH20, day_RH20, hours_RH20] = datevec(time_RH_15_20); %create vectors for y m d
 %% filter
nlat = length(lat);
nlon = length(lon);
ndays = length(hours_RH20)/24;
nhours = length(hours_RH20);
nmonths = 12*6; %13; %number of bomths from 20 to 20 
% %https://www.epochconverter.com/days/2202
RH_daily_20 = zeros(nlon,nlat,ndays);
RH_monthly_20 = zeros(nlon,nlat,nmonths);

year_start_days = [1,32,60,91,121,152,182,213,244,274,305,335];
year_end_days = [31,59,90,120,151,181,212,243,273,304,334,365];

start_days = [year_start_days (year_start_days+365) (year_start_days+2*365)... %11 years
    (year_start_days+3*365) (year_start_days+4*365) (year_start_days+5*365)]; 

end_days = [year_end_days (year_end_days+365) (year_end_days+2*365)...
    (year_end_days+3*365) (year_end_days+4*365) (year_end_days+5*365)];

RH_15_20 = zeros(nlon,nlat,ndays);

for j_lat= 1:nlat
    for k_lon = 1:nlon
        for numhrs = 1:nhours; 
esat_T(k_lon,j_lat,numhrs) = a1*exp(a3*((T_2m(k_lon,j_lat,numhrs) - T0)/(T_2m(k_lon,j_lat,numhrs) - a4))); 
esat_Td(k_lon,j_lat,numhrs) = a1*exp(a3*((Td_2m(k_lon,j_lat,numhrs) - T0)/(Td_2m(k_lon,j_lat,numhrs) - a4)));
RH_15_20(k_lon,j_lat,numhrs) = 100*esat_Td(k_lon,j_lat,numhrs)/esat_T(k_lon,j_lat,numhrs);
        end
    end
end

for j_lat= 1:nlat
    for k_lon = 1:nlon
        for numdays = 1:ndays; %going through every day

            start_hour = (numdays-1)*24+1; %first hour of day
            end_hour = start_hour+23; %lasst hour of day
            rh_day = RH_15_20(k_lon,j_lat,start_hour:end_hour); %temperature per hour throughout day
           
            rhmaxday = max(rh_day); %maximum temperature of the day
            rhmax_daily_20(k_lon,j_lat,numdays) = rhmaxday; %maximum temperature of that day for the location
            
            rhminday = min(rh_day); %minimum temperature of the day
            rhmin_daily_20(k_lon,j_lat,numdays) = rhminday; %minimum temperature of that day for the location
        end
        
        for nummonths = 1:nmonths; %sort by month now
            
            start_day = start_days(nummonths); %first day of month
            end_day = end_days(nummonths); %last day of month
            
            rh_max_daily_all_month = rhmax_daily_20(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            rh_min_daily_all_month = rhmin_daily_20(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            
            rhmean_maxmonth = mean(rh_max_daily_all_month); %average of max temps per day - monthly mean
            rhmean_max_monthly_20(k_lon,j_lat,nummonths) = rhmean_maxmonth; %mean monthly temp of max temp per day for the location
            
            rhmean_minmonth = mean(rh_min_daily_all_month); %average of min temps per day - monthly mean
            rhmean_min_monthly_20(k_lon,j_lat,nummonths) = rhmean_minmonth; %mean monthly temp of min temp per day for the location
        end
    end
end
clear esat_T
clear esat_Td
clear T_2m
clear Td_2m
clear RH_15_20
clear RH_daily_20
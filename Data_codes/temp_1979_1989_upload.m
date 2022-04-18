temp_79_89_info = ncinfo('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_79_89.nc');
original_data_temp_79_89 = netcdf.open('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_79_89.nc');

%ncdisp('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_90_02.crdownload')

 lon = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_79_89.nc','longitude');  
 lat = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_79_89.nc','latitude') ; 
time_hrs1900_temp_79_89 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_79_89.nc','time') ;
temp_79_89 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_79_89.nc', 't2m');

%organize time so it's easier to read/undesrtand
time_temp_79_89 = datenum(1900,1,1,double(time_hrs1900_temp_79_89),0,0); %convert to yr month day hrs min sec
[year_temp89, month_temp89, day_temp89, hours_temp89] = datevec(time_temp_79_89); %create vectors for y m d
%% filter
nlat = length(lat);
nlon = length(lon);

ndays = length(hours_temp89)/24;
nmonths = 12*11; %11; %number of bomths from 79 to 89

%https://www.epochconverter.com/days/2022
tmax_daily_89 = zeros(nlon,nlat,ndays);
tmax_monthly_89 = zeros(nlon,nlat,nmonths);

year_start_days = [1,32,60,91,121,152,182,213,244,274,305,335];
year_end_days = [31,59,90,120,151,181,212,243,273,304,334,365];

start_days = [year_start_days (year_start_days+365) (year_start_days+2*365)... %11 years
    (year_start_days+3*365) (year_start_days+4*365) (year_start_days+5*365)...
    (year_start_days+6*365) (year_start_days+7*365) (year_start_days+8*365)...
    (year_start_days+9*365) (year_start_days+10*365)]; %off by two days, presumably due to leap years?

end_days = [year_end_days (year_end_days+365) (year_end_days+2*365)...
    (year_end_days+3*365) (year_end_days+4*365) (year_end_days+5*365)...
    (year_end_days+6*365) (year_end_days+7*365) (year_end_days+8*365)...
    (year_end_days+9*365) (year_end_days+10*365)]; %off by three days, presumably due to leap years?

for j_lat= 1:nlat
    for k_lon = 1:nlon
        for numdays = 1:ndays; %going through every day
            start_hour = (numdays-1)*24+1; %first hour of day
            end_hour = start_hour+23; %lasst hour of day
            t_day = temp_79_89(k_lon,j_lat,start_hour:end_hour); %temperature per hour throughout day
           
           tmaxday = max(t_day); %maximum temperature of the day
            tmax_daily_89(k_lon,j_lat,numdays) = tmaxday; %maximum temperature of that day for the location
            
            tminday = min(t_day); %minimum temperature of the day
            tmin_daily_89(k_lon,j_lat,numdays) = tminday; %minimum temperature of that day for the location
        end
        %at this point I should have a lat by lon by day array that has the
        %highest temperature of the day recorded for every day in the
        %dataset. should. lol
        %and one for lowest
        
        for nummonths = 1:nmonths; %sort by month now
            
            start_day = start_days(nummonths); %first day of month
            end_day = end_days(nummonths); %last day of month
            
            temps_max_daily_all_month = tmax_daily_89(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            temps_min_daily_all_month = tmin_daily_89(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            
            tmean_maxmonth = mean(temps_max_daily_all_month); %average of max temps per day - monthly mean
            tmean_max_monthly_89(k_lon,j_lat,nummonths) = tmean_maxmonth - 273.15; %mean monthly temp of max temp per day for the location
            
            tmean_minmonth = mean(temps_min_daily_all_month); %average of min temps per day - monthly mean
            tmean_min_monthly_89(k_lon,j_lat,nummonths) = tmean_minmonth - 273.15; %mean monthly temp of min temp per day for the location
        end
    end
end
clear temp_79_89
clear tmax_daily_89
clear tmin_daily_89

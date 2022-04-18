%% correct temp from 2010 to 2021

%upload
temp10_21_info = ncinfo('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_10_21.nc');
original_data_temp_10_21 = netcdf.open('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_10_21.nc');


%ncdisp('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_1.crdownload')

% lon_temp_10_21 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_1.crdownload','longitude');  
% lat_temp_10_21 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_1.crdownload','latitude') ; 
time_hrs1900_temp_10_21 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_10_21.nc','time') ;
temp_10_21 = ncread('C:\users\sarah\Desktop\Project\Files\Downloaded_Data\temperature_10_21.nc', 't2m');
%redownload?

%organize time so it's easier to read/undesrtand
time_temp_10_21 = datenum(1900,1,1,double(time_hrs1900_temp_10_21),0,0); %convert to yr month day hrs min sec
[year_temp21, month_temp21, day_temp21, hours_temp21] = datevec(time_temp_10_21); %create vectors for y m d
%%
%% filter
nlat = length(lat);
nlon = length(lon);

ndays = length(hours_temp21)/24;
nmonths = 12*12; %11; %number of bomths from 10 to 21

%https://www.epochconverter.com/days/2022
tmax_daily_21= zeros(nlon,nlat,ndays);
tmin_daily_21= zeros(nlon,nlat,ndays);
tmax_monthly_21 = zeros(nlon,nlat,nmonths);

year_start_days = [1,32,60,91,121,152,182,213,244,274,305,335];
year_end_days = [31,59,90,120,151,181,212,243,273,304,334,365];



start_days = [year_start_days (year_start_days+365) (year_start_days+2*365)... %11 years
    (year_start_days+3*365) (year_start_days+4*365) (year_start_days+5*365)...
    (year_start_days+6*365) (year_start_days+7*365) (year_start_days+8*365)...
    (year_start_days+9*365) (year_start_days+10*365) (year_start_days+11*365)]; %off by two days, presumably due to leap years?

end_days = [year_end_days (year_end_days+365) (year_end_days+2*365)...
    (year_end_days+3*365) (year_end_days+4*365) (year_end_days+5*365)...
    (year_end_days+6*365) (year_end_days+7*365) (year_end_days+8*365)...
    (year_end_days+9*365) (year_end_days+10*365) (year_end_days+11*365)]; %off by three days, presumably due to leap years?

for j_lat= 1:nlat
    for k_lon = 1:nlon
        for numdays = 1:ndays; %going through every day
            start_hour = (numdays-1)*24+1; %first hour of day
            end_hour = start_hour+23; %lasst hour of day
            t_day = temp_10_21(k_lon,j_lat,start_hour:end_hour); %temperature per hour throughout day
           %t_day appears to be wrong too
            tmaxday = max(t_day); %maximum temperature of the day
            tmax_daily_21(k_lon,j_lat,numdays) = tmaxday; %maximum temperature of that day for the location
            
            tminday = min(t_day); %minimum temperature of the day
            tmin_daily_21(k_lon,j_lat,numdays) = tminday; %minimum temperature of that day for the location
            %issue here!!!
        end
        %at this point I should have a lat by lon by day array that has the
        %highest temperature of the day recorded for every day in the
        %dataset. should. lol
        %and one for lowest
        
        for nummonths = 1:nmonths; %sort by month now
            
            start_day = start_days(nummonths); %first day of month
            end_day = end_days(nummonths); %last day of month
            
            temps_max_daily_all_month = tmax_daily_21(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            temps_min_daily_all_month = tmin_daily_21(k_lon,j_lat,start_day:end_day); %max temperature per day for whole month
            
            tmean_maxmonth = mean(temps_max_daily_all_month); %average of max temps per day - monthly mean
            tmean_max_monthly_21(k_lon,j_lat,nummonths) = tmean_maxmonth - 273.15; %mean monthly temp of max temp per day for the location
            
            tmean_minmonth = mean(temps_min_daily_all_month); %average of min temps per day - monthly mean
            tmean_min_monthly_21(k_lon,j_lat,nummonths) = tmean_minmonth - 273.15; %mean monthly temp of min temp per day for the location
            %issue is at (:,:,23)
        end
    end
end
% clear temp_10_21
% clear tmax_daily_21
% clear tmin_daily_21
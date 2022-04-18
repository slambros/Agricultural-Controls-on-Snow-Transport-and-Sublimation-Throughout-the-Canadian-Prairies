%filter temp

%% filter
nlat = length(lat);
nlon = length(lon);

ndays = length(hours_temp89)/24;
nmonths = 12; %number of bomths from 79 to 89

%https://www.epochconverter.com/days/2022
tmax_daily_89 = zeros(nlon,nlat,ndays);
tmax_monthly_89 = zeros(nlon,nlat,nmonths);

start_days = [1,32,60,91,121,152,182,213,244,274,305,335];
end_days = [31,59,90,120,151,181,212,243,273,304,334,365];

for j_lat= 1:nlat
    for k_lon = 1:nlon
        for numdays = 1:ndays; %going through every day
            start_hour = (numdays-1)*24+1;
            end_hour = start_hour+23;
             t_day = temp_79_89(k_lon,j_lat,start_hour:end_hour); %lat/lon indices were in wrong order
            tmaxday = max(t_day);
            tmax_daily_89(k_lon,j_lat,numdays) = tmaxday;
        end
        
        %clear temp_79_89
        
        for nummonths = 1:nmonths; %going through every day
            
            start_day = start_days(nummonths);
            end_day = end_days(nummonths);
            
            temps_daily_all_month = tmax_daily_89(k_lon,j_lat,start_day:end_day); %lat/lon indices were in wrong order
            tmaxmonth = max(temps_daily_all_month);
            tmax_monthly_89(k_lon,j_lat,nummonths) = tmaxmonth;
        end
    end
end


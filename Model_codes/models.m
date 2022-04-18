
addpath 'C:\Users\sarah\Desktop\Project\Files\Data_codes' %add path to access codes that load data
upload_all %code that uploads al data
%%

%empty transportation and sublimation arrays
tran_25 = zeros(129,49,length(month));
tran_f = zeros(129,49,length(month));
sub_25 = zeros(129,49,length(month));
sub_f = zeros(129,49,length(month));


%calculate sublimation and transportation for every location over all
%months
for j_lat= 1:nlat
    for k_lon = 1:nlon
        for i = 1:length(month)
            tran_f(k_lon,j_lat,i) = -14.33+2.257*windspeed(k_lon,j_lat,i)-0.245*T_max(k_lon,j_lat,i) +0.046*RH_max(k_lon,j_lat,i)+0.0786*snowfall(k_lon,j_lat,i);
            tran_25(k_lon,j_lat,i) =  -8.259+0.889*windspeed(k_lon,j_lat,i) +5.698*exp(-0.101*(T_max(k_lon,j_lat,i)+20)) + 0.041*RH_max(k_lon,j_lat,i) + 3.318*exp(-8.716/(snowdepth(k_lon,j_lat,i)));
%             
        if (tran_f(k_lon,j_lat,i) < 0)
            tran_f(k_lon,j_lat,i) = 0;
        end

        if (tran_25(k_lon,j_lat,i) < 0)
            tran_25(k_lon,j_lat,i) = 0;
        end
        
        sub_f(k_lon,j_lat,i) = 7.206 +1.764*windspeed(k_lon,j_lat,i) - 0.158*T_max(k_lon,j_lat,i)-0.176*RH_max(k_lon,j_lat,i) + 0.191*snowfall(k_lon,j_lat,i);
        sub_25(k_lon,j_lat,i) = -6.927 + 1.846*windspeed(k_lon,j_lat,i) - 0.171*T_min(k_lon,j_lat,i) - 0.074*RH_min(k_lon,j_lat,i) + 0.01*snowfall(k_lon,j_lat,i) + 5.218*exp(-6.12/snowdepth(k_lon,j_lat,i));
        %set non physical values to 0
        if (sub_f(k_lon,j_lat,i) < 0)
            sub_f(k_lon,j_lat,i) = 0;
        end

        if (sub_25(k_lon,j_lat,i) < 0)
            sub_25(k_lon,j_lat,i) = 0;
        end
%         
        end
        %add outline
        for ll = 1:516
        xq = lon(k_lon);
        yq = lat(j_lat);
        in(k_lon, j_lat,ll) = inpolygon(xq,yq, lonplot,latplot);
        end
     end
end

%%
%no values outside outline
    sub_f(in==0) = NaN;
    sub_25(in==0) = NaN;
    tran_f(in==0) = NaN;
    tran_25(in==0) = NaN;
    snowdepth(in==0) = NaN;
    snowfall(in==0) = NaN;
    windspeed(in==0) = NaN;
    T_max(in==0) = NaN;
    T_min(in==0) = NaN;
    RH_min(in==0) = NaN;
    RH_max(in==0) = NaN;
 %empty difference values
tran_diff = zeros(129,49,length(month));
sub_diff = zeros(129,49,length(month));
for j_lat= 1:nlat
    for k_lon = 1:nlon
        for i = 1:length(month)
tran_diff(k_lon,j_lat,i) = tran_25(k_lon,j_lat,i)-tran_f(k_lon,j_lat,i);
sub_diff(k_lon,j_lat,i) = sub_25(k_lon,j_lat,i)-sub_f(k_lon,j_lat,i);

%after 25cm snowdepth, stsubble no longer makes a significant difference
%SWE = 2.39*d + 2.05, where d = 25
if snowdepth(k_lon,j_lat,i) > 61.8; %%%%%%%%%%%%CHANGEDDDDDDDDDDDDDDD
tran_diff(k_lon,j_lat,i) = 0;
sub_diff(k_lon,j_lat,i) = 0;
end
        end
    end
end
%no values outside outline
tran_diff(in==0) = NaN;
sub_diff(in==0) = NaN;

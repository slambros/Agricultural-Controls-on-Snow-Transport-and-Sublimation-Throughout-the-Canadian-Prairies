%snowfall
snowfall_januarys_ave = zeros(nlon, nlat);
snowfall_januarys = snowfall(:,:,januarys);

snowfall_novs_ave = zeros(nlon, nlat);
snowfall_novs = snowfall(:,:,novs);

snowfall_decs_ave = zeros(nlon, nlat);
snowfall_decs = snowfall(:,:,decs);

snowfall_febs_ave = zeros(nlon, nlat);
snowfall_febs = snowfall(:,:,febs);

snowfall_marchs_ave = zeros(nlon, nlat);
snowfall_marchs = snowfall(:,:,marchs);

snowfall_aprils_ave = zeros(nlon, nlat);
snowfall_aprils = snowfall(:,:,aprils);
%

snowdepth_novs_ave = zeros(nlon, nlat);
snowdepth_novs = snowdepth(:,:,novs);

snowdepth_decs_ave = zeros(nlon, nlat);
snowdepth_decs = snowdepth(:,:,decs);

snowdepth_januarys_ave = zeros(nlon, nlat);
snowdepth_januarys = snowdepth(:,:,januarys);

snowdepth_febs_ave = zeros(nlon, nlat);
snowdepth_febs = snowdepth(:,:,febs);

snowdepth_marchs_ave = zeros(nlon, nlat);
snowdepth_marchs = snowfall(:,:,marchs);

snowdepth_aprils_ave = zeros(nlon, nlat);
snowdepth_aprils = snowdepth(:,:,aprils);

%

windspeed_januarys_ave = zeros(nlon, nlat);
windspeed_januarys = windspeed(:,:,januarys);

windspeed_novs_ave = zeros(nlon, nlat);
windspeed_novs = windspeed(:,:,novs);

windspeed_decs_ave = zeros(nlon, nlat);
windspeed_decs = windspeed(:,:,decs);

windspeed_febs_ave = zeros(nlon, nlat);
windspeed_febs = windspeed(:,:,febs);

windspeed_marchs_ave = zeros(nlon, nlat);
windspeed_marchs = windspeed(:,:,marchs);

windspeed_aprils_ave = zeros(nlon, nlat);
windspeed_aprils = windspeed(:,:,aprils);

%

T_max_januarys_ave = zeros(nlon, nlat);
T_max_januarys = T_max(:,:,januarys);

T_max_novs_ave = zeros(nlon, nlat);
T_max_novs = T_max(:,:,novs);

T_max_decs_ave = zeros(nlon, nlat);
T_max_decs = T_max(:,:,decs);

T_max_febs_ave = zeros(nlon, nlat);
T_max_febs = T_max(:,:,febs);

T_max_marchs_ave = zeros(nlon, nlat);
T_max_marchs = T_max(:,:,marchs);

T_max_aprils_ave = zeros(nlon, nlat);
T_max_aprils = T_max(:,:,aprils);

%

T_min_januarys_ave = zeros(nlon, nlat);
T_min_januarys = T_min(:,:,januarys);

T_min_novs_ave = zeros(nlon, nlat);
T_min_novs = T_min(:,:,novs);

T_min_decs_ave = zeros(nlon, nlat);
T_min_decs = T_min(:,:,decs);

T_min_febs_ave = zeros(nlon, nlat);
T_min_febs = T_min(:,:,febs);

T_min_marchs_ave = zeros(nlon, nlat);
T_min_marchs = T_min(:,:,marchs);

T_min_aprils_ave = zeros(nlon, nlat);
T_min_aprils = T_min(:,:,aprils);

%

RH_min_januarys_ave = zeros(nlon, nlat);
RH_min_januarys = RH_min(:,:,januarys);

RH_min_novs_ave = zeros(nlon, nlat);
RH_min_novs = RH_min(:,:,novs);

RH_min_decs_ave = zeros(nlon, nlat);
RH_min_decs = RH_min(:,:,decs);

RH_min_febs_ave = zeros(nlon, nlat);
RH_min_febs = RH_min(:,:,febs);

RH_min_marchs_ave = zeros(nlon, nlat);
RH_min_marchs = RH_min(:,:,marchs);

RH_min_aprils_ave = zeros(nlon, nlat);
RH_min_aprils = RH_min(:,:,aprils);

%

RH_max_januarys_ave = zeros(nlon, nlat);
RH_max_januarys = RH_max(:,:,januarys);

RH_max_novs_ave = zeros(nlon, nlat);
RH_max_novs = RH_max(:,:,novs);

RH_max_decs_ave = zeros(nlon, nlat);
RH_max_decs = RH_max(:,:,decs);

RH_max_febs_ave = zeros(nlon, nlat);
RH_max_febs = RH_max(:,:,febs);

RH_max_marchs_ave = zeros(nlon, nlat);
RH_max_marchs = RH_max(:,:,marchs);

RH_max_aprils_ave = zeros(nlon, nlat);
RH_max_aprils = RH_max(:,:,aprils);

for j_lat = 1:nlat
    for k_lon = 1:nlon
    snowfall_januarys_ave(k_lon, j_lat) = mean(snowfall_januarys(k_lon,j_lat,:));

    snowfall_decs_ave(k_lon, j_lat) = mean(snowfall_decs(k_lon,j_lat,:));

    snowfall_novs_ave(k_lon, j_lat) = mean(snowfall_novs(k_lon,j_lat,:));

    snowfall_febs_ave(k_lon, j_lat) = mean(snowfall_febs(k_lon,j_lat,:));

    snowfall_marchs_ave(k_lon, j_lat) = mean(snowfall_marchs(k_lon,j_lat,:));

    snowfall_aprils_ave(k_lon, j_lat) = mean(snowfall_aprils(k_lon,j_lat,:));
    %

    snowdepth_januarys_ave(k_lon, j_lat) = mean(snowdepth_januarys(k_lon,j_lat,:));

    snowdepth_decs_ave(k_lon, j_lat) = mean(snowdepth_decs(k_lon,j_lat,:));

    snowdepth_novs_ave(k_lon, j_lat) = mean(snowdepth_novs(k_lon,j_lat,:));

    snowdepth_febs_ave(k_lon, j_lat) = mean(snowdepth_febs(k_lon,j_lat,:));
    
    snowdepth_marchs_ave(k_lon, j_lat) = mean(snowdepth_marchs(k_lon,j_lat,:));

    snowdepth_aprils_ave(k_lon, j_lat) = mean(snowdepth_aprils(k_lon,j_lat,:));
    %
    
    windspeed_januarys_ave(k_lon, j_lat) = mean(windspeed_januarys(k_lon,j_lat,:));

    windspeed_decs_ave(k_lon, j_lat) = mean(windspeed_decs(k_lon,j_lat,:));

    windspeed_novs_ave(k_lon, j_lat) = mean(windspeed_novs(k_lon,j_lat,:));

    windspeed_febs_ave(k_lon, j_lat) = mean(windspeed_febs(k_lon,j_lat,:));
    
    windspeed_marchs_ave(k_lon, j_lat) = mean(windspeed_marchs(k_lon,j_lat,:));

    windspeed_aprils_ave(k_lon, j_lat) = mean(windspeed_aprils(k_lon,j_lat,:));
    
        %
    
    T_max_januarys_ave(k_lon, j_lat) = mean(T_max_januarys(k_lon,j_lat,:));

    T_max_decs_ave(k_lon, j_lat) = mean(T_max_decs(k_lon,j_lat,:));

    T_max_novs_ave(k_lon, j_lat) = mean(T_max_novs(k_lon,j_lat,:));

    T_max_febs_ave(k_lon, j_lat) = mean(T_max_febs(k_lon,j_lat,:));
    
    T_max_marchs_ave(k_lon, j_lat) = mean(T_max_marchs(k_lon,j_lat,:));

    T_max_aprils_ave(k_lon, j_lat) = mean(T_max_aprils(k_lon,j_lat,:));
            %
    
    T_min_januarys_ave(k_lon, j_lat) = mean(T_min_januarys(k_lon,j_lat,:));

    T_min_decs_ave(k_lon, j_lat) = mean(T_min_decs(k_lon,j_lat,:));

    T_min_novs_ave(k_lon, j_lat) = mean(T_min_novs(k_lon,j_lat,:));

    T_min_febs_ave(k_lon, j_lat) = mean(T_min_febs(k_lon,j_lat,:));
    
    T_min_marchs_ave(k_lon, j_lat) = mean(T_min_marchs(k_lon,j_lat,:));

    T_min_aprils_ave(k_lon, j_lat) = mean(T_min_aprils(k_lon,j_lat,:));
    
    
    %
    RH_min_januarys_ave(k_lon, j_lat) = mean(RH_min_januarys(k_lon,j_lat,:));

    RH_min_decs_ave(k_lon, j_lat) = mean(RH_min_decs(k_lon,j_lat,:));

    RH_min_novs_ave(k_lon, j_lat) = mean(RH_min_novs(k_lon,j_lat,:));

    RH_min_febs_ave(k_lon, j_lat) = mean(RH_min_febs(k_lon,j_lat,:));
    
    RH_min_marchs_ave(k_lon, j_lat) = mean(RH_min_marchs(k_lon,j_lat,:));

    RH_min_aprils_ave(k_lon, j_lat) = mean(RH_min_aprils(k_lon,j_lat,:));
    
        %
    RH_max_januarys_ave(k_lon, j_lat) = mean(RH_max_januarys(k_lon,j_lat,:));

    RH_max_decs_ave(k_lon, j_lat) = mean(RH_max_decs(k_lon,j_lat,:));

    RH_max_novs_ave(k_lon, j_lat) = mean(RH_max_novs(k_lon,j_lat,:));

    RH_max_febs_ave(k_lon, j_lat) = mean(RH_max_febs(k_lon,j_lat,:));
    
    RH_max_marchs_ave(k_lon, j_lat) = mean(RH_max_marchs(k_lon,j_lat,:));

    RH_max_aprils_ave(k_lon, j_lat) = mean(RH_max_aprils(k_lon,j_lat,:));
    end
end
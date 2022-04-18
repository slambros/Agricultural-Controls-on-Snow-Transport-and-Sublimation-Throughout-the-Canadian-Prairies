%best and worst sublimation, this doesn't work
%figure
nlat_correction = 45;
for j_lat = 1:nlat_correction
    for k_lon = 1:nlon
        %find how many fallow-stubble values in each location are positive
        pos_values_for_box_sub(k_lon,j_lat) = sum(sub_diff(k_lon,j_lat,:) > 0 );
        %find how many fallow-stubble values in total exist in each location
        all_values_for_box_sub(k_lon,j_lat) = length(sub_diff(k_lon,j_lat,:));
        %find percentage of positive values for each location
        percent_pos_for_box_sub(k_lon,j_lat) = 100*pos_values_for_box_sub(k_lon,j_lat)/all_values_for_box_sub(k_lon,j_lat);

xq_percentpos_box_sub = lon(k_lon);
yq_percentpos_box_sub = lat(j_lat);
in_percentpos_box_sub(k_lon, j_lat) = inpolygon(xq_percentpos_box_sub,yq_percentpos_box_sub, lonplot,latplot);
    end
end
%get rid of outside of broder values
percent_pos_for_box_sub(in_percentpos_box_sub==0) = NaN;

percent_pos_descend_sub= sort(percent_pos_for_box_sub(~isnan(percent_pos_for_box_sub)),'descend');
worst_ten_percent_percent_pos_sub = percent_pos_descend_sub(1:ceil(length(percent_pos_descend_sub)*0.1)); 

percent_pos_ascend_sub= sort(percent_pos_for_box_sub(~isnan(percent_pos_for_box_sub)));
best_ten_percent_percent_pos_sub = percent_pos_ascend_sub(1:ceil(length(percent_pos_ascend_sub)*0.1)); 

%%
%create empty arrays to make sure everything is the same size
%tbh I did this very late last night and can't remember why it's necessary
%but I do know it needs to be here :/
nlat_correction = 45;
bad_percent_windspeed_sub = NaN(nlon,nlat_correction);
good_percent_windspeed_sub = NaN(nlon,nlat_correction);
bad_percent_snowfall_sub = NaN(nlon,nlat_correction);
good_percent_snowfall_sub = NaN(nlon,nlat_correction);
bad_percent_rhmax_sub = NaN(nlon,nlat_correction);
good_percent_rhmax_sub = NaN(nlon,nlat_correction);
bad_percent_rhmin_sub = NaN(nlon,nlat_correction);
good_percent_rhmin_sub = NaN(nlon,nlat_correction);
bad_percent_tmax_sub = NaN(nlon,nlat_correction);
good_percent_tmax_sub = NaN(nlon,nlat_correction);
bad_percent_snowdepth_sub = NaN(nlon,nlat_correction);
good_percent_snowdepth_sub = NaN(nlon,nlat_correction);
bad_percent_tmin_sub = NaN(nlon,nlat_correction);
good_percent_tmin_sub = NaN(nlon,nlat_correction);

bad_coor_lon_sub = NaN(nlon,nlat_correction);
bad_coor_lat_sub = NaN(nlon,nlat_correction);

good_coor_lon_sub = NaN(nlon,nlat_correction);
good_coor_lat_sub = NaN(nlon,nlat_correction);
%%
%average windspeed over all time, each location
for j_lat = 1:nlat
    for k_lon = 1:nlon
        
       ave_wind_per_location(k_lon,j_lat) = (windspeed_novs_ave(k_lon,j_lat)+ windspeed_decs_ave(k_lon,j_lat)+ windspeed_januarys_ave(k_lon,j_lat)+...
            windspeed_febs_ave(k_lon,j_lat)+ windspeed_marchs_ave(k_lon,j_lat)+ windspeed_aprils_ave(k_lon,j_lat))/6;
       
        ave_snowdepth_per_location(k_lon,j_lat) = (snowdepth_novs_ave(k_lon,j_lat)+ snowdepth_decs_ave(k_lon,j_lat)+ snowdepth_januarys_ave(k_lon,j_lat)+...
            snowdepth_febs_ave(k_lon,j_lat)+ snowdepth_marchs_ave(k_lon,j_lat)+ snowdepth_aprils_ave(k_lon,j_lat))/6;

       ave_snowfall_per_location(k_lon,j_lat) = (snowfall_novs_ave(k_lon,j_lat)+ snowfall_decs_ave(k_lon,j_lat)+ snowfall_januarys_ave(k_lon,j_lat)+...
            snowfall_febs_ave(k_lon,j_lat)+ snowfall_marchs_ave(k_lon,j_lat)+snowfall_aprils_ave(k_lon,j_lat))/6;

       ave_tmax_per_location(k_lon,j_lat) = (T_max_novs_ave(k_lon,j_lat)+T_max_decs_ave(k_lon,j_lat)+ T_max_januarys_ave(k_lon,j_lat)+...
            T_max_febs_ave(k_lon,j_lat)+ T_max_marchs_ave(k_lon,j_lat)+ T_max_aprils_ave(k_lon,j_lat))/6;

        ave_tmin_per_location(k_lon,j_lat) = (T_min_novs_ave(k_lon,j_lat)+ T_min_decs_ave(k_lon,j_lat)+ T_min_januarys_ave(k_lon,j_lat)+...
            T_min_febs_ave(k_lon,j_lat)+ T_min_marchs_ave(k_lon,j_lat)+ T_min_aprils_ave(k_lon,j_lat))/6;

        ave_rhmax_per_location(k_lon,j_lat) = (RH_max_novs_ave(k_lon,j_lat)+ RH_max_decs_ave(k_lon,j_lat)+ RH_max_januarys_ave(k_lon,j_lat)+...
            RH_max_febs_ave(k_lon,j_lat)+ RH_max_marchs_ave(k_lon,j_lat)+ RH_max_aprils_ave(k_lon,j_lat))/6;

        ave_rhmin_per_location(k_lon,j_lat) = (RH_min_novs_ave(k_lon,j_lat)+ RH_min_decs_ave(k_lon,j_lat)+RH_min_januarys_ave(k_lon,j_lat)+...
            RH_min_febs_ave(k_lon,j_lat)+ RH_min_marchs_ave(k_lon,j_lat)+RH_min_aprils_ave(k_lon,j_lat))/6;

    end
end

%normalized = mean over time (129*49) - mean over time and space (constant)
%/ std of temporal mean ( constant

%mean over time, november to april (temporal mean T): ave_variable_per_location

%mean over time and space, within prairie boundary, nov to april:
wind_descending_ave_sub = sort(ave_wind_per_location(~isnan(ave_wind_per_location)),'descend');
wind_ave_all_season_sub = mean(wind_descending_ave_sub);
snowdepth_descending_ave_sub = sort(ave_snowdepth_per_location(~isnan(ave_snowdepth_per_location)),'descend');
snowdepth_ave_all_season_sub = mean(snowdepth_descending_ave_sub);
snowfall_descending_ave_sub = sort(ave_snowfall_per_location(~isnan(ave_snowfall_per_location)),'descend');
snowfall_ave_all_season_sub = mean(snowfall_descending_ave_sub);
tmin_descending_ave_sub = sort(ave_tmin_per_location(~isnan(ave_tmin_per_location)),'descend');
tmin_ave_all_season_sub = mean(tmin_descending_ave_sub);
tmax_descending_ave_sub = sort(ave_tmax_per_location(~isnan(ave_tmax_per_location)),'descend');
tmax_ave_all_season_sub = mean(tmax_descending_ave_sub);
rhmin_descending_ave_sub = sort(ave_rhmin_per_location(~isnan(ave_rhmin_per_location)),'descend');
rhmin_ave_all_season_sub = mean(rhmin_descending_ave_sub);
rhmax_descending_ave_sub = sort(ave_rhmax_per_location(~isnan(ave_rhmax_per_location)),'descend');
rhmax_ave_all_season_sub = mean(rhmax_descending_ave_sub);

std_wind_sub = std(wind_descending_ave_sub,'omitnan');
std_snowdepth_sub = std(snowdepth_descending_ave_sub,'omitnan');
std_snowfall_sub = std(snowfall_descending_ave_sub,'omitnan');
std_rhmin_sub = std(rhmin_descending_ave_sub,'omitnan');
std_rhmax_sub = std(rhmax_descending_ave_sub,'omitnan');
std_tmin_sub = std(tmin_descending_ave_sub,'omitnan');
std_tmax_sub = std(tmax_descending_ave_sub,'omitnan');

%std of temporal mean

for j_lat = 1:nlat
    for k_lon = 1:nlon
        normalize_wind_sub(k_lon,j_lat) = (ave_wind_per_location(k_lon,j_lat) - wind_ave_all_season_sub)/std_wind_sub;
        normalize_snowdepth_sub(k_lon,j_lat) = (ave_snowdepth_per_location(k_lon,j_lat) - snowdepth_ave_all_season_sub)/std_snowdepth_sub;
        normalize_snowfall_sub(k_lon,j_lat) = (ave_snowfall_per_location(k_lon,j_lat) - snowfall_ave_all_season_sub)/std_snowfall_sub;
         normalize_tmin_sub(k_lon,j_lat) = (ave_tmin_per_location(k_lon,j_lat) - tmin_ave_all_season_sub)/std_tmin_sub;
         normalize_tmax_sub(k_lon,j_lat) = (ave_tmax_per_location(k_lon,j_lat) - tmax_ave_all_season_sub)/std_tmax_sub;
        normalize_rhmin_sub(k_lon,j_lat) = (ave_rhmin_per_location(k_lon,j_lat) - rhmin_ave_all_season_sub)/std_rhmin_sub;
        normalize_rhmax_sub(k_lon,j_lat) = (ave_rhmax_per_location(k_lon,j_lat) - rhmax_ave_all_season_sub)/std_rhmax_sub;

    end
end

%%

%max+min/2 = 18.5
%for gg = 1:length(lengthvec)
for j_lat = 1:nlat_correction
    for k_lon = 1:nlon
        if ismember(percent_pos_for_box_sub(k_lon,j_lat),worst_ten_percent_percent_pos_sub) == 1;
        %bad_percent(k_lon,j_lat) = percent_pos_for_box(k_lon,j_lat);
       % (windspeed(k_lon,j_lat)-wind_ave_all_season)/
        bad_percent_windspeed_sub(k_lon,j_lat) = normalize_wind_sub(k_lon,j_lat);
        bad_percent_snowfall_sub(k_lon,j_lat) = normalize_snowfall_sub(k_lon,j_lat);
        bad_percent_rhmax_sub(k_lon,j_lat) = normalize_rhmax_sub(k_lon,j_lat);
        bad_percent_rhmin_sub(k_lon,j_lat) = normalize_rhmin_sub(k_lon,j_lat);
        bad_percent_tmax_sub(k_lon,j_lat) = normalize_tmax_sub(k_lon,j_lat);
        bad_percent_tmin_sub(k_lon,j_lat) = normalize_tmin_sub(k_lon,j_lat);
        bad_percent_snowdepth_sub(k_lon,j_lat) = normalize_snowdepth_sub(k_lon,j_lat);

         bad_coor_lon_sub(k_lon, j_lat) = lon(k_lon);
         bad_coor_lat_sub(k_lon, j_lat) = lat(j_lat);
        
        elseif ismember(percent_pos_for_box_sub(k_lon,j_lat),best_ten_percent_percent_pos_sub) == 1;
        good_percent_windspeed_sub(k_lon,j_lat) = normalize_wind_sub(k_lon,j_lat);
        good_percent_snowfall_sub(k_lon,j_lat) = normalize_snowfall_sub(k_lon,j_lat);
        good_percent_rhmax_sub(k_lon,j_lat) = normalize_rhmax_sub(k_lon,j_lat);
        good_percent_rhmin_sub(k_lon,j_lat) = normalize_rhmin_sub(k_lon,j_lat);
        good_percent_tmax_sub(k_lon,j_lat) = normalize_tmax_sub(k_lon,j_lat);
        good_percent_tmin_sub(k_lon,j_lat) = normalize_tmin_sub(k_lon,j_lat);
        good_percent_snowdepth_sub(k_lon,j_lat) = normalize_snowdepth_sub(k_lon,j_lat);
        
        good_coor_lon_sub(k_lon, j_lat) = lon(k_lon);
        good_coor_lat_sub(k_lon, j_lat) = lat(j_lat);
        end
        end
end

figure('Position',[100 100 780 500]) 
plot(bad_coor_lon_sub, bad_coor_lat_sub,'rv')
hold on
plot(good_coor_lon_sub, good_coor_lat_sub,'g^')
hold on
title('Most and Least Physically Consistent Areas, Sublimation','fontsize',15)
hold on
plot(lonplot,latplot,'k','linewidth',2) 
hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    hold on
    plot(lonprovinces,latprovinces,'k')
hLeg = gobjects(5,1);
hLeg(1) = scatter(NaN,NaN,'rv');
hLeg(2) = scatter(NaN,NaN,'g^');
hLeg(3) = scatter(NaN,NaN,'k','filled'); %%%%
hLeg(4) = plot(NaN,NaN, 'k'); %%%%%%fixed
hLeg(5) = plot(NaN,NaN, 'k','linewidth',2);%%%%%%%
legend(hLeg,'Least physically consistent', 'Most physically consistent','Areas used to create models','Provincial borders','Canadian Prairie outline');
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

%%
%make vectors for the boxplot
boxplot_vector_bad_windspeed=bad_percent_windspeed_sub;
boxplot_vector_bad_windspeed(isnan(boxplot_vector_bad_windspeed))=[];

boxplot_vector_good_windspeed=good_percent_windspeed_sub;
boxplot_vector_good_windspeed(isnan(boxplot_vector_good_windspeed))=[];

boxplot_vector_bad_snowfall=bad_percent_snowfall_sub;
boxplot_vector_bad_snowfall(isnan(boxplot_vector_bad_snowfall))=[];

boxplot_vector_good_snowfall=good_percent_snowfall_sub;
boxplot_vector_good_snowfall(isnan(boxplot_vector_good_snowfall))=[];

boxplot_vector_bad_rhmax=bad_percent_rhmax_sub;
boxplot_vector_bad_rhmax(isnan(boxplot_vector_bad_rhmax))=[];

boxplot_vector_good_rhmax=good_percent_rhmax_sub;
boxplot_vector_good_rhmax(isnan(boxplot_vector_good_rhmax))=[];

boxplot_vector_bad_rhmin=bad_percent_rhmin_sub;
boxplot_vector_bad_rhmin(isnan(boxplot_vector_bad_rhmin))=[];

boxplot_vector_good_rhmin=good_percent_rhmin_sub;
boxplot_vector_good_rhmin(isnan(boxplot_vector_good_rhmin))=[];

boxplot_vector_bad_tmax=bad_percent_tmax_sub;
boxplot_vector_bad_tmax(isnan(boxplot_vector_bad_tmax))=[];

boxplot_vector_good_tmax=good_percent_tmax_sub;
boxplot_vector_good_tmax(isnan(boxplot_vector_good_tmax))=[];

boxplot_vector_bad_tmin = bad_percent_tmin_sub;
boxplot_vector_bad_tmin(isnan(bad_percent_tmin_sub))=[];

boxplot_vector_good_tmin = good_percent_tmin_sub;
boxplot_vector_good_tmin(isnan(good_percent_tmin_sub))=[];


boxplot_vector_bad_snowdepth=bad_percent_snowdepth_sub;
boxplot_vector_bad_snowdepth(isnan(boxplot_vector_bad_snowdepth))=[];

boxplot_vector_good_snowdepth=good_percent_snowdepth_sub;
boxplot_vector_good_snowdepth(isnan(boxplot_vector_good_snowdepth))=[];

boxplot_matrix = NaN(1117,14);
boxplot_matrix((1:length(boxplot_vector_bad_windspeed)),1) = boxplot_vector_bad_windspeed;
boxplot_matrix((1:length(boxplot_vector_bad_windspeed)),2) = boxplot_vector_bad_snowfall;
boxplot_matrix((1:length(boxplot_vector_bad_windspeed)),3) = boxplot_vector_bad_rhmax;
boxplot_matrix((1:length(boxplot_vector_bad_windspeed)),4) = boxplot_vector_bad_rhmin;
boxplot_matrix((1:length(boxplot_vector_bad_windspeed)),5) = boxplot_vector_bad_tmax;
boxplot_matrix((1:length(boxplot_vector_bad_windspeed)),6) = boxplot_vector_bad_tmin;
boxplot_matrix((1:length(boxplot_vector_bad_windspeed)),7) = boxplot_vector_bad_snowdepth;

boxplot_matrix((1:length(boxplot_vector_good_windspeed)),8) = boxplot_vector_good_windspeed;
boxplot_matrix((1:length(boxplot_vector_good_windspeed)),9) = boxplot_vector_good_snowfall;
boxplot_matrix((1:length(boxplot_vector_good_windspeed)),10) = boxplot_vector_good_rhmax;
boxplot_matrix((1:length(boxplot_vector_good_windspeed)),11) = boxplot_vector_good_rhmin;
boxplot_matrix((1:length(boxplot_vector_good_windspeed)),12) = boxplot_vector_good_tmax;
boxplot_matrix((1:length(boxplot_vector_good_windspeed)),13) = boxplot_vector_good_tmin;
boxplot_matrix((1:length(boxplot_vector_good_windspeed)),14) = boxplot_vector_good_snowdepth;

figure('Position',[100 100 850 500])

inputvar = repmat({'Wind' 'Snowfall' 'RH_max' 'RH_min' 'T_max' 'T_min' 'Snowdepth'},1,2);
badgood = [repmat({'Least'},1,7),repmat({'Most'},1,7)];

boxplot(boxplot_matrix,{inputvar,badgood},'colors',repmat('km',1,7),'factorgap',[5 2],'labelverbosity','minor');
%xtickangle(badgood,45)
set(gca, 'DefaultTextFontSize', 12);

title('Normalized Variables Associated With Most and Least Physically Consistent Locations, Sublimation','fontsize',12)

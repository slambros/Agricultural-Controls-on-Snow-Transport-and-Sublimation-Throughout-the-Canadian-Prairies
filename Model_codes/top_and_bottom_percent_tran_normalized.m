%best and worst TRANSPORT
%figure
nlat_correction = 45;

percent_pos_for_box = NaN(nlon,nlat_correction);
in_percentpos_box = NaN(nlon,nlat_correction);
for j_lat = 1:nlat_correction
    for k_lon = 1:nlon
        %find how many fallow-stubble values in each location are positive
        pos_values_for_box(k_lon,j_lat) = sum(tran_diff(k_lon,j_lat,:) > 0 );
        %find how many fallow-stubble values in total exist in each location
        all_values_for_box(k_lon,j_lat) = length(tran_diff(k_lon,j_lat,:));
        %find percentage of positive values for each location
        percent_pos_for_box(k_lon,j_lat) = 100*pos_values_for_box(k_lon,j_lat)/all_values_for_box(k_lon,j_lat);

xq_percentpos_box = lon(k_lon);
yq_percentpos_box = lat(j_lat);
in_percentpos_box(k_lon, j_lat) = inpolygon(xq_percentpos_box,yq_percentpos_box, lonplot,latplot);
    end
end
%get rid of outside of broder values
percent_pos_for_box(in_percentpos_box==0) = NaN;

percent_pos_descend= sort(percent_pos_for_box(~isnan(percent_pos_for_box)),'descend');
worst_ten_percent_percent_pos = percent_pos_descend(1:ceil(length(percent_pos_descend)*0.1)); 

percent_pos_ascend= sort(percent_pos_for_box(~isnan(percent_pos_for_box)));
best_ten_percent_percent_pos = percent_pos_ascend(1:ceil(length(percent_pos_ascend)*0.1)); 

%%
%create empty arrays to make sure everything is the same size
%tbh I did this very late last night and can't remember why it's necessary
%but I do know it needs to be here :/
nlat_correction = 45;
bad_percent_windspeed = NaN(nlon,nlat_correction);
good_percent_windspeed = NaN(nlon,nlat_correction);
bad_percent_snowfall = NaN(nlon,nlat_correction);
good_percent_snowfall = NaN(nlon,nlat_correction);
bad_percent_rhmax = NaN(nlon,nlat_correction);
good_percent_rhmax = NaN(nlon,nlat_correction);
bad_percent_rhmin = NaN(nlon,nlat_correction);
good_percent_rhmin = NaN(nlon,nlat_correction);
bad_percent_tmax = NaN(nlon,nlat_correction);
good_percent_tmax = NaN(nlon,nlat_correction);
bad_percent_snowdepth = NaN(nlon,nlat_correction);
good_percent_snowdepth = NaN(nlon,nlat_correction);
bad_percent_tmin = NaN(nlon,nlat_correction);
good_percent_tmin = NaN(nlon,nlat_correction);

bad_coor_lon_tran = NaN(nlon,nlat_correction);
bad_coor_lat_tran = NaN(nlon,nlat_correction);
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
wind_descending_ave = sort(ave_wind_per_location(~isnan(ave_wind_per_location)),'descend');
wind_ave_all_season = mean(wind_descending_ave);
snowdepth_descending_ave = sort(ave_snowdepth_per_location(~isnan(ave_snowdepth_per_location)),'descend');
snowdepth_ave_all_season = mean(snowdepth_descending_ave);
snowfall_descending_ave = sort(ave_snowfall_per_location(~isnan(ave_snowfall_per_location)),'descend');
snowfall_ave_all_season = mean(snowfall_descending_ave);
tmin_descending_ave = sort(ave_tmin_per_location(~isnan(ave_tmin_per_location)),'descend');
tmin_ave_all_season = mean(tmin_descending_ave);
tmax_descending_ave = sort(ave_tmax_per_location(~isnan(ave_tmax_per_location)),'descend');
tmax_ave_all_season = mean(tmax_descending_ave);
rhmin_descending_ave = sort(ave_rhmin_per_location(~isnan(ave_rhmin_per_location)),'descend');
rhmin_ave_all_season = mean(rhmin_descending_ave);
rhmax_descending_ave = sort(ave_rhmax_per_location(~isnan(ave_rhmax_per_location)),'descend');
rhmax_ave_all_season = mean(rhmax_descending_ave);

std_wind = std(wind_descending_ave,'omitnan');
std_snowdepth = std(snowdepth_descending_ave,'omitnan');
std_snowfall = std(snowfall_descending_ave,'omitnan');
std_rhmin = std(rhmin_descending_ave,'omitnan');
std_rhmax = std(rhmax_descending_ave,'omitnan');
std_tmin = std(tmin_descending_ave,'omitnan');
std_tmax = std(tmax_descending_ave,'omitnan');

%std of temporal mean

for j_lat = 1:nlat
    for k_lon = 1:nlon
        normalize_wind(k_lon,j_lat) = (ave_wind_per_location(k_lon,j_lat) - wind_ave_all_season)/std_wind;
        normalize_snowdepth(k_lon,j_lat) = (ave_snowdepth_per_location(k_lon,j_lat) - snowdepth_ave_all_season)/std_snowdepth;
        normalize_snowfall(k_lon,j_lat) = (ave_snowfall_per_location(k_lon,j_lat) - snowfall_ave_all_season)/std_snowfall;
         normalize_tmin(k_lon,j_lat) = (ave_tmin_per_location(k_lon,j_lat) - tmin_ave_all_season)/std_tmin;
         normalize_tmax(k_lon,j_lat) = (ave_tmax_per_location(k_lon,j_lat) - tmax_ave_all_season)/std_tmax;
        normalize_rhmin(k_lon,j_lat) = (ave_rhmin_per_location(k_lon,j_lat) - rhmin_ave_all_season)/std_rhmin;
        normalize_rhmax(k_lon,j_lat) = (ave_rhmax_per_location(k_lon,j_lat) - rhmax_ave_all_season)/std_rhmax;

    end
end

%%
 good_coor_lon = NaN(nlon,nlat_correction);
 good_coor_lat = NaN(nlon,nlat_correction);
%max+min/2 = 18.5
%for gg = 1:length(lengthvec)
for j_lat = 1:nlat_correction
    for k_lon = 1:nlon
        if ismember(percent_pos_for_box(k_lon,j_lat),worst_ten_percent_percent_pos) == 1;
        %bad_percent(k_lon,j_lat) = percent_pos_for_box(k_lon,j_lat);
       % (windspeed(k_lon,j_lat)-wind_ave_all_season)/
        bad_percent_windspeed(k_lon,j_lat) = normalize_wind(k_lon,j_lat);
        bad_percent_snowfall(k_lon,j_lat) = normalize_snowfall(k_lon,j_lat);
        bad_percent_rhmax(k_lon,j_lat) = normalize_rhmax(k_lon,j_lat);
        bad_percent_rhmin(k_lon,j_lat) = normalize_rhmin(k_lon,j_lat);
        bad_percent_tmax(k_lon,j_lat) = normalize_tmax(k_lon,j_lat);
        bad_percent_tmin(k_lon,j_lat) = normalize_tmin(k_lon,j_lat);
        bad_percent_snowdepth(k_lon,j_lat) = normalize_snowdepth(k_lon,j_lat);

         bad_coor_lon_tran(k_lon, j_lat) = lon(k_lon);
         bad_coor_lat_tran(k_lon, j_lat) = lat(j_lat);
        
        elseif ismember(percent_pos_for_box(k_lon,j_lat),best_ten_percent_percent_pos) == 1;
        good_percent_windspeed(k_lon,j_lat) = normalize_wind(k_lon,j_lat);
        good_percent_snowfall(k_lon,j_lat) = normalize_snowfall(k_lon,j_lat);
        good_percent_rhmax(k_lon,j_lat) = normalize_rhmax(k_lon,j_lat);
        good_percent_rhmin(k_lon,j_lat) = normalize_rhmin(k_lon,j_lat);
        good_percent_tmax(k_lon,j_lat) = normalize_tmax(k_lon,j_lat);
        good_percent_tmin(k_lon,j_lat) = normalize_tmin(k_lon,j_lat);
        good_percent_snowdepth(k_lon,j_lat) = normalize_snowdepth(k_lon,j_lat);
        
        good_coor_lon_tran(k_lon, j_lat) = lon(k_lon);
         good_coor_lat_tran(k_lon, j_lat) = lat(j_lat);
        end
        end
end


figure('Position',[100 100 780 500]) 
plot(bad_coor_lon_tran, bad_coor_lat_tran,'rv')
hold on
plot(good_coor_lon_tran, good_coor_lat_tran,'g^')
hold on
title('Most and Least Physically Consistent Areas, Transport')
hold on
plot(lonplot,latplot,'k','linewidth',2) 
hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    hold on
    plot(lonprovinces,latprovinces,'k')
     abtxt = {'Alberta'};
text(-118,56.75,abtxt,'fontsize',13)
sktxt = {'Saskatchewan'};
text(-109,56.75,sktxt,'fontsize',13)
mttxt = {'Manitoba'};
text(-100,56.75,mttxt,'fontsize',13)
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
boxplot_vector_bad_windspeed=bad_percent_windspeed;
boxplot_vector_bad_windspeed(isnan(boxplot_vector_bad_windspeed))=[];

boxplot_vector_good_windspeed=good_percent_windspeed;
boxplot_vector_good_windspeed(isnan(boxplot_vector_good_windspeed))=[];

boxplot_vector_bad_snowfall=bad_percent_snowfall;
boxplot_vector_bad_snowfall(isnan(boxplot_vector_bad_snowfall))=[];

boxplot_vector_good_snowfall=good_percent_snowfall;
boxplot_vector_good_snowfall(isnan(boxplot_vector_good_snowfall))=[];

boxplot_vector_bad_rhmax=bad_percent_rhmax;
boxplot_vector_bad_rhmax(isnan(boxplot_vector_bad_rhmax))=[];

boxplot_vector_good_rhmax=good_percent_rhmax;
boxplot_vector_good_rhmax(isnan(boxplot_vector_good_rhmax))=[];

boxplot_vector_bad_rhmin=bad_percent_rhmin;
boxplot_vector_bad_rhmin(isnan(boxplot_vector_bad_rhmin))=[];

boxplot_vector_good_rhmin=good_percent_rhmin;
boxplot_vector_good_rhmin(isnan(boxplot_vector_good_rhmin))=[];

boxplot_vector_bad_tmax=bad_percent_tmax;
boxplot_vector_bad_tmax(isnan(boxplot_vector_bad_tmax))=[];

boxplot_vector_good_tmax=good_percent_tmax;
boxplot_vector_good_tmax(isnan(boxplot_vector_good_tmax))=[];

boxplot_vector_bad_tmin = bad_percent_tmin;
boxplot_vector_bad_tmin(isnan(bad_percent_tmin))=[];

boxplot_vector_good_tmin = good_percent_tmin;
boxplot_vector_good_tmin(isnan(good_percent_tmin))=[];


boxplot_vector_bad_snowdepth=bad_percent_snowdepth;
boxplot_vector_bad_snowdepth(isnan(boxplot_vector_bad_snowdepth))=[];

boxplot_vector_good_snowdepth=good_percent_snowdepth;
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

title('Normalized Variables Associated With Most and Least Physically Consistent Locations, Transport','fontsize',12)

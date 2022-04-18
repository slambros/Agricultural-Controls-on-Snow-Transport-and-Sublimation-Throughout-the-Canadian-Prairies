
%%
% locating most negative values
%sorted_month values are descending - bad to good

%calculate average difference over all season per location
for j_lat = 1:nlat
    for k_lon = 1:nlon
        sub_diff_all_values_average(k_lon, j_lat) = mean(sub_diff(k_lon, j_lat,:));
    end
end

%collect all sub diff values without nans
sub_diff_all_values = sub_diff_all_values_average(~isnan(sub_diff_all_values_average));

%put into ascending vector
sorted_all_ascend = sort(sub_diff_all_values);
best_ten_percent_sub_diff_all = sorted_all_ascend(1:ceil(length(sorted_all_ascend)*0.1));

nlat_correction = 45;

bad_coor_lon_sub_all = NaN(nlon,nlat_correction);
bad_coor_lat_sub_all = NaN(nlon,nlat_correction);

 good_coor_lon_sub_neg_all = NaN(nlon,nlat_correction);
 good_coor_lat_sub_neg_all = NaN(nlon,nlat_correction);
%max+min/2 = 18.5


for j_lat = 1:nlat_correction
    for k_lon = 1:nlon
        if ismember(sub_diff_all_values_average(k_lon,j_lat),best_ten_percent_sub_diff_all) == 1;
     
         good_coor_lon_sub_neg_all(k_lon, j_lat) = lon(k_lon);
         good_coor_lat_sub_neg_all(k_lon, j_lat) = lat(j_lat);

         end
    end
end

figure('Position',[100 100 780 500]) 
plot(good_coor_lon_sub_neg_all, good_coor_lat_sub_neg_all,'g^')
hold on
plot(lon(lon_locations), lat(lat_locations),'ko')
hold on
plot(lonplot,latplot,'k') 
ylim([49 60])
xlim([-120 -88])
title('Areas With Largest Difference in Sublimation','fontsize',15)
hold on
plot(lonplot,latplot,'k','linewidth',2) 
hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    hold on
    plot(lonprovinces,latprovinces,'k')
hLeg = gobjects(5,1);
hLeg = gobjects(4,1);
hLeg(1) = scatter(NaN,NaN,'g^');
hLeg(2) = scatter(NaN,NaN,'k','filled'); %%%%
hLeg(3) = plot(NaN,NaN, 'k'); %%%%%%fixed
hLeg(4) = plot(NaN,NaN, 'k','linewidth',2);%%%%%%%
legend(hLeg,'Areas with largest sublimation difference','Areas used to create models','Provincial borders','Canadian Prairie outline');
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

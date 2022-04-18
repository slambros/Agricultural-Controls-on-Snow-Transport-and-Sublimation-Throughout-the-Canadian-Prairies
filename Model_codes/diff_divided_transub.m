%transportation and sublimation difference (fallow - stubble) each month per location divided by:
%trans/sub in fallow conditions
%average amount of snowfall over entire november to april season
for j_lat = 1:nlat
    for k_lon = 1:nlon
     tran_over_fallow_novs(k_lon, j_lat) = tran_diff_novs_ave(k_lon, j_lat)/tran_f_novs_ave(k_lon, j_lat);
     tran_over_fallow_decs(k_lon, j_lat) = tran_diff_decs_ave(k_lon, j_lat)/tran_f_decs_ave(k_lon, j_lat);
     tran_over_fallow_januarys(k_lon, j_lat) = tran_diff_januarys_ave(k_lon, j_lat)/tran_f_januarys_ave(k_lon, j_lat);
     tran_over_fallow_febs(k_lon, j_lat) = tran_diff_febs_ave(k_lon, j_lat)/tran_f_febs_ave(k_lon, j_lat);
     tran_over_fallow_marchs(k_lon, j_lat) =tran_diff_marchs_ave(k_lon, j_lat)/tran_f_marchs_ave(k_lon, j_lat);
     tran_over_fallow_aprils(k_lon, j_lat) = tran_diff_aprils_ave(k_lon, j_lat)/tran_f_aprils_ave(k_lon, j_lat);

    sub_over_fallow_novs(k_lon, j_lat) = sub_diff_novs_ave(k_lon, j_lat)/sub_f_novs_ave(k_lon, j_lat);
    sub_over_fallow_decs(k_lon, j_lat) = sub_diff_decs_ave(k_lon, j_lat)/sub_f_decs_ave(k_lon, j_lat);
     sub_over_fallow_januarys(k_lon, j_lat) = sub_diff_januarys_ave(k_lon, j_lat)/sub_f_januarys_ave(k_lon, j_lat);
     sub_over_fallow_febs(k_lon, j_lat) = sub_diff_febs_ave(k_lon, j_lat)/sub_f_febs_ave(k_lon, j_lat);
     sub_over_fallow_marchs(k_lon, j_lat) =sub_diff_marchs_ave(k_lon, j_lat)/sub_f_marchs_ave(k_lon, j_lat);
     sub_over_fallow_aprils(k_lon, j_lat) = sub_diff_aprils_ave(k_lon, j_lat)/sub_f_aprils_ave(k_lon, j_lat);

    end
end

%calculate average snowfall per location from nov-april 1979-2021
for j_lat = 1:nlat
    for k_lon = 1:nlon
        for i = 1:43
       total_snowfall_novapril_43years(k_lon, j_lat,i) = snowfall_novs(k_lon, j_lat,i) + snowfall_novs(k_lon, j_lat,i) + snowfall_decs(k_lon, j_lat,i) +...
       snowfall_januarys(k_lon, j_lat,i) + snowfall_febs(k_lon, j_lat,i) + snowfall_marchs(k_lon, j_lat,i)+ snowfall_aprils(k_lon, j_lat,i);
        end
       average_snowfall_each_location(k_lon, j_lat) = mean(total_snowfall_novapril_43years(k_lon,j_lat,:));
       
    end
end

for j_lat = 1:nlat
    for k_lon = 1:nlon
        tran_diff_over_snowfall_nov(k_lon, j_lat) = tran_diff_novs_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        tran_diff_over_snowfall_dec(k_lon, j_lat) = tran_diff_decs_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        tran_diff_over_snowfall_jan(k_lon, j_lat) = tran_diff_januarys_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        tran_diff_over_snowfall_feb(k_lon, j_lat) = tran_diff_febs_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        tran_diff_over_snowfall_march(k_lon, j_lat) = tran_diff_marchs_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        tran_diff_over_snowfall_april(k_lon, j_lat) = tran_diff_aprils_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        
        sub_diff_over_snowfall_nov(k_lon, j_lat) = sub_diff_novs_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        sub_diff_over_snowfall_dec(k_lon, j_lat) = sub_diff_decs_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        sub_diff_over_snowfall_jan(k_lon, j_lat) = sub_diff_januarys_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        sub_diff_over_snowfall_feb(k_lon, j_lat) = sub_diff_febs_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        sub_diff_over_snowfall_march(k_lon, j_lat) = sub_diff_marchs_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
        sub_diff_over_snowfall_april(k_lon, j_lat) = sub_diff_aprils_ave(k_lon,j_lat)/average_snowfall_each_location(k_lon, j_lat);
    end
end

%%
figure('Position',[100 100 800 660]) %plot transport difference /fallow for each month
sgtitle('Difference in Snow Transport Relative to Snow Transport in Fallow Conditions','FontSize',15)
subplot(3,2,1)
    pcolor(lon,lat,tran_over_fallow_novs(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,tran_over_fallow_novs',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['November'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,2)
    pcolor(lon,lat,tran_over_fallow_decs(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,tran_over_fallow_decs',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['December'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,3)
    pcolor(lon,lat,tran_over_fallow_januarys(:,:)');
    colormap(brewermap([],'Rdbu'))
    shading interp 
   caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,tran_over_fallow_januarys',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['January'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,4)
    pcolor(lon,lat,tran_over_fallow_febs(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,tran_over_fallow_febs',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['February'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,5)
    pcolor(lon,lat,tran_over_fallow_marchs(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,tran_over_fallow_marchs',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['March'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,6)
    pcolor(lon,lat,tran_over_fallow_aprils(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,tran_over_fallow_aprils',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['April'])
hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
%%
%plot sublimation difference/fallow for each month
figure('Position',[100 100 800 660])
sgtitle('Difference in Sublimation Relative to Sublimation in Fallow Conditions','FontSize',15)

subplot(3,2,1)
    pcolor(lon,lat,sub_over_fallow_novs(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,sub_over_fallow_novs',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['November'])
hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,2)
    pcolor(lon,lat,sub_over_fallow_decs(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,sub_over_fallow_decs',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['December'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
            a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,3)
    pcolor(lon,lat,sub_over_fallow_januarys(:,:)');
    colormap(brewermap([],'Rdbu'))
    shading interp 
   caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,sub_over_fallow_januarys',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['January'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
            a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,4)
    pcolor(lon,lat,sub_over_fallow_febs(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,sub_over_fallow_febs',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['February'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
            a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,5)
    pcolor(lon,lat,sub_over_fallow_marchs(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,sub_over_fallow_marchs',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['March'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
            a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,6)
    pcolor(lon,lat,sub_over_fallow_aprils(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-1 1]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    contour(lon,lat,sub_over_fallow_aprils',[0 0],'k:')
ylim([49 60])
xlim([-120 -88])
    title(['April'])
  hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

%%
figure('Position',[100 100 800 660])
sgtitle('Difference in Snow Transport Relative to Season Average Snowfall','FontSize',15)

subplot(3,2,1)
    pcolor(lon,lat,tran_diff_over_snowfall_nov(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-0.03 0.03]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -88])
    title(['November'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,2)
    pcolor(lon,lat,tran_diff_over_snowfall_dec(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-0.03 0.03]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -88])
    title(['December'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,3)
    pcolor(lon,lat,tran_diff_over_snowfall_jan(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-0.03 0.03]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -90])
    title(['January'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,4)
    pcolor(lon,lat,tran_diff_over_snowfall_feb(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-0.03 0.03]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -88])
    title(['February'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,5)
    pcolor(lon,lat,tran_diff_over_snowfall_march(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-0.03 0.03]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -88])
    title(['March'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,6)
    pcolor(lon,lat,tran_diff_over_snowfall_april(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-0.03 0.03]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -90])
    title(['April'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
%%
figure('Position',[100 100 800 660])
sgtitle('Difference in Sublimation Relative to Season Average Snowfall','FontSize',15)
subplot(3,2,1)
    pcolor(lon,lat,sub_diff_over_snowfall_nov(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
     caxis([-0.05 0.05]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    ylim([49 60])
xlim([-120 -88])
    title(['November'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,2)
    pcolor(lon,lat,sub_diff_over_snowfall_dec(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
     caxis([-0.05 0.05]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -88])
    title(['December'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,3)
    pcolor(lon,lat,sub_diff_over_snowfall_jan(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-0.05 0.05]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -88])
    title(['January'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,4)
    pcolor(lon,lat,sub_diff_over_snowfall_feb(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-0.05 0.05]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -88])
    title(['February'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,5)
    pcolor(lon,lat,sub_diff_over_snowfall_march(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-0.05 0.05]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -88])
    title(['March'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,6)
    pcolor(lon,lat,sub_diff_over_snowfall_april(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-0.05 0.05]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
ylim([49 60])
xlim([-120 -88])
    title(['April'])
    hold on
scatter(lon(lon_locations), lat(lat_locations),'k','filled')
hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
%plot ave std
%close all

figure('Position',[100 100 780 640])
sgtitle('Average Snow Transport by Wind per Month, Stubble Conditions')
    subplot(3,2,1)
    pcolor(lon,lat,tran_25_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

  
    subplot(3,2,2)
    pcolor(lon,lat,tran_25_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 7]);
        drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')


    subplot(3,2,3)
    pcolor(lon,lat,tran_25_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,4)
    pcolor(lon,lat,tran_25_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    %caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    
    subplot(3,2,5)
    pcolor(lon,lat,tran_25_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,6)
    pcolor(lon,lat,tran_25_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

 %%
figure('Position',[100 100 780 640])
sgtitle('Average Snow Transport by Wind per Month, Fallow Conditions')
    subplot(3,2,1)
    pcolor(lon,lat,tran_f_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')


subplot(3,2,2)
    pcolor(lon,lat,tran_f_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,3)
    pcolor(lon,lat,tran_f_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
  caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,4)
    pcolor(lon,lat,tran_f_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,5)
    pcolor(lon,lat,tran_f_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,6)
    pcolor(lon,lat,tran_f_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
  caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    %%
figure('Position',[100 100 780 640])
sgtitle('Average Difference in Snow Transport (Stubble - Fallow)')
    
    subplot(3,2,6)
    pcolor(lon,lat,tran_diff_aprils_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-4.5 4.5]);
   drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
     a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,2)
    pcolor(lon,lat,tran_diff_decs_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-4.5 4.5]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
     a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,1)
    pcolor(lon,lat,tran_diff_novs_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-4.5 4.5]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
     a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
subplot(3,2,3)
    pcolor(lon,lat,tran_diff_januarys_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-4.5 4.5]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
 a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,4)
    pcolor(lon,lat,tran_diff_febs_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
    caxis([-4.5 4.5]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
     a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,5)
    pcolor(lon,lat,tran_diff_marchs_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-4.5 4.5]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
     a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    %%
   figure('Position',[100 100 780 640])
    sgtitle('Average Sublimation per Month, Stubble Conditions')
    subplot(3,2,1)
    pcolor(lon,lat,sub_25_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')


subplot(3,2,2)
    pcolor(lon,lat,sub_25_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,3)
    pcolor(lon,lat,sub_25_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,4)
    pcolor(lon,lat,sub_25_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,5)
    pcolor(lon,lat,sub_25_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,6)
    pcolor(lon,lat,sub_25_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    caxis([0 7]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
%%
figure('Position',[100 100 780 640])
    sgtitle('Average Sublimation per Month, Fallow Conditions')
    subplot(3,2,1)
    pcolor(lon,lat,sub_f_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 9]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,2)
    pcolor(lon,lat,sub_f_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 9]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,3)
    pcolor(lon,lat,sub_f_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 9]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,4)
    pcolor(lon,lat,sub_f_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 9]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,5)
    pcolor(lon,lat,sub_f_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 9]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,6)
    pcolor(lon,lat,sub_f_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([0 9]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    %%
figure('Position',[100 100 780 640])
sgtitle('Average Difference in Sublimation (Stubble - Fallow)')
subplot(3,2,3)
    pcolor(lon,lat,sub_diff_januarys_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-8 8]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,1)
    pcolor(lon,lat,sub_diff_novs_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-8 8]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
   scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,2)
    pcolor(lon,lat,sub_diff_decs_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
  caxis([-8 8]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,4)
    pcolor(lon,lat,sub_diff_febs_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
  caxis([-8 8]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,5)
    pcolor(lon,lat,sub_diff_marchs_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
 caxis([-8 8]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,6)
    pcolor(lon,lat,sub_diff_aprils_ave(:,:)');
    colormap(brewermap([],'RdBu'))
    shading interp 
   caxis([-8 8]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
%% variables
%snowfall
figure('Position',[100 100 780 640])
sgtitle('Average Snowfall')
subplot(3,2,1)
    pcolor(lon,lat,snowfall_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([10 35]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,2)
    pcolor(lon,lat,snowfall_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
  caxis([10 35]);
        drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
    subplot(3,2,3)
    pcolor(lon,lat,snowfall_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
  caxis([10 35]);
        drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,4)
    pcolor(lon,lat,snowfall_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
  caxis([10 35]);
        drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
   scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,5)
    pcolor(lon,lat,snowfall_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
  caxis([10 35]);
        drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,6)
    pcolor(lon,lat,snowfall_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
   caxis([10 35]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
    %%
    %snowdepth

figure('Position',[100 100 780 640])
sgtitle('Average Snowdepth')
subplot(3,2,1)
    pcolor(lon,lat,snowdepth_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([0 45]);
drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,2)
    pcolor(lon,lat,snowdepth_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([0 45]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
    subplot(3,2,3)
    pcolor(lon,lat,snowdepth_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
 caxis([0 45]);
   drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
   scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,4)
    pcolor(lon,lat,snowdepth_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([0 45]);
drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,5)
    pcolor(lon,lat,snowdepth_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([0 45]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,6)
    pcolor(lon,lat,snowdepth_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([0 45]);
drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lon(lon_locations), lat(lat_locations),'ko')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

%%
    %windspeed

figure('Position',[100 100 780 640])
sgtitle('Average Wind Speed')

subplot(3,2,1)
    pcolor(lon,lat,windspeed_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([2.5 6.5]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,2)
    pcolor(lon,lat,windspeed_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([2.5 6.5]);
drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
    subplot(3,2,3)
    pcolor(lon,lat,windspeed_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([2.5 6.5]);
  drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,4)
    pcolor(lon,lat,windspeed_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([2.5 6.5]);
drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,5)
    pcolor(lon,lat,windspeed_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([2.5 6.5]);
drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,6)
    pcolor(lon,lat,windspeed_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([2.5 6.5]);
 drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lonprovinces,latprovinces,'k')
   a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

%%
    %T_max

figure('Position',[100 100 780 640])
sgtitle('Average T_{max}')

subplot(3,2,1)
    pcolor(lon,lat,T_max_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-15 15]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,2)
    pcolor(lon,lat,T_max_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-15 15]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
    subplot(3,2,3)
    pcolor(lon,lat,T_max_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-15 15]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,4)
    pcolor(lon,lat,T_max_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-15 15]);
    drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,5)
    pcolor(lon,lat, T_max_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-15 15]);
    drawnow
       colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,6)
    pcolor(lon,lat, T_max_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-15 15]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
%%
    %T_min

figure('Position',[100 100 780 640])
sgtitle('Average T_{min}')
subplot(3,2,1)
    pcolor(lon,lat,T_min_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
    caxis([-22 2]);
   drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,2)
    pcolor(lon,lat,T_min_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-22 2]);
   drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
    subplot(3,2,3)
    pcolor(lon,lat,T_min_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-22 2]);
   drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,4)
    pcolor(lon,lat,T_min_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-22 2]);
   drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,5)
    pcolor(lon,lat, T_min_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-22 2]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
    
subplot(3,2,6)
    pcolor(lon,lat, T_min_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([-22 2]);
drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

%%
    %rh_min

figure('Position',[100 100 780 640])
sgtitle('Average RH_{min}')
subplot(3,2,1)
    pcolor(lon,lat,RH_min_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([25 80]);
%caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    
subplot(3,2,2)
    pcolor(lon,lat,RH_min_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([25 80]);
%caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    
    subplot(3,2,3)
    pcolor(lon,lat,RH_min_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([25 80]);
    drawnow
%caxis([70 100]);
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    
subplot(3,2,4)
    pcolor(lon,lat,RH_min_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([25 80]);
%caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    
subplot(3,2,5)
    pcolor(lon,lat, RH_min_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([25 80]);
%caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,6)
    pcolor(lon,lat, RH_min_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([25 80]);
%caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')



%%
    %rh_max

figure('Position',[100 100 780 640])
sgtitle('Average RH_{max}')
subplot(3,2,1)
    pcolor(lon,lat,RH_max_novs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('November')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,2)
    pcolor(lon,lat,RH_max_decs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('December')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

    subplot(3,2,3)
    pcolor(lon,lat,RH_max_januarys_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('January')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,4)
    pcolor(lon,lat,RH_max_febs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('February')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')
subplot(3,2,5)
    pcolor(lon,lat, RH_max_marchs_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([70 100]);
    drawnow
   colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('March')
    hold on
    plot(lonprovinces,latprovinces,'k')
        a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')

subplot(3,2,6)
    pcolor(lon,lat, RH_max_aprils_ave(:,:)');
    colormap(brewermap([],'PuRd'))
    shading interp 
caxis([70 100]);
     drawnow
    colorbar
    hold on
    plot(lonplot,latplot,'k')
    hold on
    scatter(lon(lon_locations), lat(lat_locations),'k','filled')
    ylim([49 60])
    xlim([-120 -88])
    title('April')
    hold on
    plot(lonprovinces,latprovinces,'k')
    a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12)
set(gca,'XTickLabelMode','auto')



%%%%
%need to run filter_by_month first
%calculate average transport values per month and location - mmSWE
for j_lat = 1:nlat
    for k_lon = 1:nlon
    tran_25_novs_ave(k_lon, j_lat) = mean(tran_25_novs(k_lon,j_lat,:));
    tran_f_novs_ave(k_lon, j_lat) = mean(tran_f_novs(k_lon,j_lat,:));
    tran_diff_novs_ave(k_lon, j_lat) = mean(tran_diff_novs(k_lon,j_lat,:));

    tran_25_decs_ave(k_lon, j_lat) = mean(tran_25_decs(k_lon,j_lat,:));
    tran_f_decs_ave(k_lon, j_lat) = mean(tran_f_decs(k_lon,j_lat,:));
    tran_diff_decs_ave(k_lon, j_lat) = mean(tran_diff_decs(k_lon,j_lat,:));

    tran_25_januarys_ave(k_lon, j_lat) = mean(tran_25_januarys(k_lon,j_lat,:));
    tran_f_januarys_ave(k_lon, j_lat) = mean(tran_f_januarys(k_lon,j_lat,:));
    tran_diff_januarys_ave(k_lon, j_lat) = mean(tran_diff_januarys(k_lon,j_lat,:));

    tran_25_febs_ave(k_lon, j_lat) = mean(tran_25_febs(k_lon,j_lat,:));
    tran_f_febs_ave(k_lon, j_lat) = mean(tran_f_febs(k_lon,j_lat,:));
    tran_diff_febs_ave(k_lon, j_lat) = mean(tran_diff_febs(k_lon,j_lat,:));
    
    tran_25_marchs_ave(k_lon, j_lat) = mean(tran_25_marchs(k_lon,j_lat,:));
    tran_f_marchs_ave(k_lon, j_lat) = mean(tran_f_marchs(k_lon,j_lat,:));
    tran_diff_marchs_ave(k_lon, j_lat) = mean(tran_diff_marchs(k_lon,j_lat,:));

    tran_25_aprils_ave(k_lon, j_lat) = mean(tran_25_aprils(k_lon,j_lat,:));
    tran_f_aprils_ave(k_lon, j_lat) = mean(tran_f_aprils(k_lon,j_lat,:));
    tran_diff_aprils_ave(k_lon, j_lat) = mean(tran_diff_aprils(k_lon,j_lat,:));

    sub_25_novs_ave(k_lon, j_lat) = mean(sub_25_novs(k_lon,j_lat,:));
    sub_f_novs_ave(k_lon, j_lat) = mean(sub_f_novs(k_lon,j_lat,:));
    sub_diff_novs_ave(k_lon, j_lat) = mean(sub_diff_novs(k_lon,j_lat,:));
   
    sub_25_decs_ave(k_lon, j_lat) = mean(sub_25_decs(k_lon,j_lat,:));
    sub_f_decs_ave(k_lon, j_lat) = mean(sub_f_decs(k_lon,j_lat,:));
    sub_diff_decs_ave(k_lon, j_lat) = mean(sub_diff_decs(k_lon,j_lat,:));
    
    sub_25_januarys_ave(k_lon, j_lat) = mean(sub_25_januarys(k_lon,j_lat,:));
    sub_f_januarys_ave(k_lon, j_lat) = mean(sub_f_januarys(k_lon,j_lat,:));
    sub_diff_januarys_ave(k_lon, j_lat) = mean(sub_diff_januarys(k_lon,j_lat,:));

    sub_25_febs_ave(k_lon, j_lat) = mean(sub_25_febs(k_lon,j_lat,:));
   sub_f_febs_ave(k_lon, j_lat) = mean(sub_f_febs(k_lon,j_lat,:));
    sub_diff_febs_ave(k_lon, j_lat) = mean(sub_diff_febs(k_lon,j_lat,:));

    sub_25_marchs_ave(k_lon, j_lat) = mean(sub_25_marchs(k_lon,j_lat,:));
    sub_f_marchs_ave(k_lon, j_lat) = mean(sub_f_marchs(k_lon,j_lat,:));
    sub_diff_marchs_ave(k_lon, j_lat) = mean(sub_diff_marchs(k_lon,j_lat,:));
    
    sub_25_aprils_ave(k_lon, j_lat) = mean(sub_25_aprils(k_lon,j_lat,:));
    sub_f_aprils_ave(k_lon, j_lat) = mean(sub_f_aprils(k_lon,j_lat,:));
    sub_diff_aprils_ave(k_lon, j_lat) = mean(sub_diff_aprils(k_lon,j_lat,:));
    end
end

%%



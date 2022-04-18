%sort fallow, stubble, and fallow - stubble by month
novs = find(month==11);
tran_25_novs_ave = zeros(nlon, nlat);
tran_25_novs = tran_25(:,:,novs);
tran_f_novs_ave = zeros(nlon, nlat);
tran_f_novs = tran_f(:,:,novs);
tran_diff_novs_ave = zeros(nlon, nlat);
tran_diff_novs = tran_diff(:,:,novs);
sub_25_novs_ave = zeros(nlon, nlat);
sub_25_novs = sub_25(:,:,novs);
sub_f_novs_ave = zeros(nlon, nlat);
sub_f_novs = sub_f(:,:,novs);
sub_diff_novs_ave = zeros(nlon, nlat);
sub_diff_novs = sub_diff(:,:,novs);

decs = find(month==12);
tran_25_decs_ave = zeros(nlon, nlat);
tran_25_decs = tran_25(:,:,decs);  
tran_f_decs_ave = zeros(nlon, nlat);
tran_f_decs = tran_f(:,:,decs);
tran_diff_decs_ave = zeros(nlon, nlat);
tran_diff_decs = tran_diff(:,:,decs);
sub_25_decs_ave = zeros(nlon, nlat);
sub_25_decs = sub_25(:,:,decs);
sub_f_decs_ave = zeros(nlon, nlat);
sub_f_decs = sub_f(:,:,decs);
sub_diff_decs_ave = zeros(nlon, nlat);
sub_diff_decs = sub_diff(:,:,decs);

januarys = find(month==1);
tran_25_januarys_ave = zeros(nlon, nlat);
tran_25_januarys = tran_25(:,:,januarys);
tran_f_januarys_ave = zeros(nlon, nlat);
tran_f_januarys = tran_f(:,:,januarys);
tran_diff_januarys_ave = zeros(nlon, nlat);
tran_diff_januarys = tran_diff(:,:,januarys);
sub_25_januarys_ave = zeros(nlon, nlat);
sub_25_januarys = sub_25(:,:,januarys);
sub_f_januarys_ave = zeros(nlon, nlat);
sub_f_januarys = sub_f(:,:,januarys);
sub_diff_januarys_ave = zeros(nlon, nlat);
sub_diff_januarys = sub_diff(:,:,januarys);
   

febs = find(month==2);
tran_25_febs_ave = zeros(nlon, nlat);
tran_25_febs = tran_25(:,:,febs);
tran_f_febs_ave = zeros(nlon, nlat);
tran_f_febs = tran_f(:,:,febs);
tran_diff_febs_ave = zeros(nlon, nlat);
tran_diff_febs = tran_diff(:,:,febs);
sub_25_febs_ave = zeros(nlon, nlat);
sub_25_febs = sub_25(:,:,febs);
sub_f_febs_ave = zeros(nlon, nlat);
sub_f_febs = sub_f(:,:,febs);
sub_diff_febs=sub_diff(:,:,febs);

marchs = find(month==3);
tran_25_marchs_ave = zeros(nlon, nlat);
tran_25_marchs = tran_25(:,:,marchs);
tran_f_marchs_ave = zeros(nlon, nlat);
tran_f_marchs = tran_f(:,:,marchs);
tran_diff_marchs_ave = zeros(nlon, nlat);
tran_diff_marchs = tran_diff(:,:,marchs);
sub_25_marchs_ave = zeros(nlon, nlat);
sub_25_marchs = sub_25(:,:,marchs);
sub_f_marchs_ave = zeros(nlon, nlat);
sub_f_marchs = sub_f(:,:,marchs);
sub_diff_marchs_ave = zeros(nlon, nlat);
sub_diff_marchs = sub_diff(:,:,marchs);

aprils = find(month==4);
tran_25_aprils_ave = zeros(nlon, nlat);
tran_25_aprils = tran_25(:,:,aprils);
tran_f_aprils_ave = zeros(nlon, nlat);
tran_f_aprils = tran_f(:,:,aprils);
tran_diff_aprils_ave = zeros(nlon, nlat);
tran_diff_aprils = tran_diff(:,:,aprils);
sub_25_aprils_ave = zeros(nlon, nlat);
sub_25_aprils = sub_25(:,:,aprils);
sub_f_aprils_ave = zeros(nlon, nlat);
sub_f_aprils = sub_f(:,:,aprils);
sub_diff_aprils_ave = zeros(nlon, nlat);
sub_diff_aprils = sub_diff(:,:,aprils);


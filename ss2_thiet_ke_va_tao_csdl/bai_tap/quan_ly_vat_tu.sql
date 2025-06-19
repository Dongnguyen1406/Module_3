use quan_ly_nguyen_vat_lieu;

create table phieu_xuat(
	so_phieu_xuat int primary key,
    ngay_xuat date
);

create table chi_tiet_phieu_xuat(
    don_gia_xuat double,
    so_luong_xuat int,
    so_phieu_xuat int,
    ma_vat_tu int,
    foreign key (so_phieu_xuat) references phieu_xuat(so_phieu_xuat),
    foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table vat_tu(
	ma_vat_tu int primary key,
    ten_vat_tu varchar(100)
);

create table chi_tiet_don_dat_hang(
	so_dat_hang int,
    ma_vat_tu int,
    primary key(so_dat_hang, ma_vat_tu),
    foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
    foreign key (so_dat_hang) references don_dat_hang(so_dat_hang)
);

create table don_dat_hang(
	so_dat_hang int primary key,
    ngay_dat_don date
);

create table nha_cung_cap(
	ma_nha_cung_cap int  ,
    ten_nha_cung_cap varchar(200),
    dia_chi varchar(200),
    so_dien_thoai varchar(11) ,
    primary key (ma_nha_cung_cap)
);

create table cung_cap(
	ma_nha_cung_cap int,
    so_dat_hang int,
    primary key(ma_nha_cung_cap, so_dat_hang),
    foreign key (so_dat_hang) references don_dat_hang(so_dat_hang),
    foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);

create table chi_tiet_phieu_nhap(
	don_gia_nhap double,
    so_luong_nhap int,
    ma_vat_tu int,
    so_phieu_nhap int,
    foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
    foreign key (so_phieu_nhap) references phieu_nhap(so_phieu_nhap)
);

create table phieu_nhap(
	so_phieu_nhap int primary key,
    ngay_nhap date
);

create table so_dien_thoai(
	ma_nha_cung_cap int,
    so_dien_thoai varchar(11),
    primary key (ma_nha_cung_cap, so_dien_thoai),
    foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
)









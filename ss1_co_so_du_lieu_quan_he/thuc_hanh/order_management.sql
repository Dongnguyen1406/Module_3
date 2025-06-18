use product_management;

create table nguoi_giao(
	ma_nguoi_giao int primary key,
    ten_nguoi_giao varchar(100)
);

create table noi_giao(
	ma_so_noi_giao int primary key,
    ten_noi_giao varchar(255)
);

create table san_pham(
	ma_san_pham int primary key,
	ten_san_phan varchar(50),
    don_vi varchar(100),
    mo_ta varchar(255)
);

create table khach_hang(
	ma_khach_hang int primary key,
	ten_khach_hang varchar(100),
	dia_chi varchar(100)
);

create table nguoi_dat(
	ma_nguoi_dat int primary key,
    ma_nguoi_dat int
 );

create table don_hang(
	ma_don_hang int primary key,
	ten_don_hang varchar(100),
	dia_chi_giao varchar(100),
	dien_thoai int,
    ma_nguoi_giao int,
    ma_san_pham int,
    foreign key (ma_nguoi_giao) references nguoi_giao(ma_nguoi_giao),
    foreign key (ma_san_pham) references san_pham(ma_san_pham)
);

create table nguoi_nhan(
	ma_nguoi_nhan int primary key,
    ten_nguoi_nhan varchar(100)
)




    
package Tufu::DB::Schema;
use strict;
use warnings;
use Teng::Schema::Declare;
use utf8;
use Encode;

table{
    name 'food';
    pk   'id';
    columns qw/id kind item_name prin_value one_prin_value one_amount unit_name/;

};

table{
    name 'beer';
    pk   'id';
    columns qw/id maker kind item_name alcohol_content prin_value unit_name make_end_flg not_write_flg/;

};

table{
    name 'statistics_num';
    pk   'year';
    columns qw/year num_gk num_male num_female/;

};

1;

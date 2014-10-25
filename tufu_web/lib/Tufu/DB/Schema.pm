package Tufu::DB::Schema;
use strict;
use warnings;
use Teng::Schema::Declare;
use utf8;
use Encode;

table{
    name 'posts';
    pk   'id';
    columns qw/id title body/;

};

1;

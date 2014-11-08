package Tufu::Web::App;
use Mojo::Base 'Mojolicious::Controller';

use Tufu::Model::Food;
use Tufu::Model::Beer;
use Tufu::Model::StatisticsNum;
use Data::Dumper;

sub food {
   # パラメータ指定
   my $self = shift;
   my $log = $self->app->log;

   $log->debug("food start");

   my $model = new Tufu::Model::Food();
   my $list = $model->find();

   $log->debug(Dumper($list));
   $log->debug("food end");

   # json指定
   $self->render(json => $list);
 }

 sub beer {
   # パラメータ指定
   my $self = shift;
   my $log = $self->app->log;

   $log->debug("beer start");

   my $model = new Tufu::Model::Beer();
   my $list = $model->find();
   $log->debug(Dumper($list));

   $log->debug("beer end");

   # json指定
   $self->render(json => $list);
 }

sub dataGraph {
   # パラメータ指定
   my $self = shift;
   my $log = $self->app->log;

   $log->debug("dataGraph start");

   my $model = new Tufu::Model::StatisticsNum();
   my $list = $model->find();
   $log->debug(Dumper($list));

   $log->debug("dataGraph end");

   # データ取得
   #$list = [];
   #push @{$list},["1998", 237, 214, 22];
   #push @{$list},["2001", 279, 260, 19];
   #push @{$list},["2004", 314, 296, 18];
   #push @{$list},["2007", 283, 274,  8];
   #push @{$list},["2010", 323, 310, 13];
   #push @{$list},["2013", 375, 361, 13];

   $self->render(json => $list);
}

1;

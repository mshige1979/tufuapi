package Tufu::Web::App;
use Mojo::Base 'Mojolicious::Controller';

use Tufu::Model::Food;
use Tufu::Model::Beer;
use Data::Dumper;

# This action will render a template
sub index {
  my $self = shift;

  # データ編集
  my $data = [
    {
        name => 'Ken'
        , age => 19
    },
    {
        name => 'Ken2'
        , age => 19
    }
  ];

  # json指定
  $self->render(json => $data);

}

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

1;

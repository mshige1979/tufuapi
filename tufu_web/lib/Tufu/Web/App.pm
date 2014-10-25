package Tufu::Web::App;
use Mojo::Base 'Mojolicious::Controller';

use Tufu::Model::Food;
use Tufu::Model::Beer;

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

   my $data = [];
   my $model = new Tufu::Model::Food();

   # json指定
   $self->render(json => $data);
 }

 sub beer {
   # パラメータ指定
   my $self = shift;

   my $data = [];
   my $model = new Tufu::Model::Beer();


   # json指定
   $self->render(json => $data);
 }

1;

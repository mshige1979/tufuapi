package Tufu::Web::App;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub index {
  my $self = shift;

  # データ編集
  my $data = {name => 'Ken', age => 19};

  # json指定
  $self->render(json => $data);

}

1;

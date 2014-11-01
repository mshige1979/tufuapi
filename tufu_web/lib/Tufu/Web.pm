package Tufu::Web;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  $self->app->hook(before_routes => sub {
    my $c = shift;
    $c->req->headers->if_modified_since(
        'Thu, 01 Jun 1970 00:00:00 GMT'
    );
  });

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('root#index');

  # api用
  $r->get('/api/food')->to('app#food');
  $r->get('/api/beer')->to('app#beer');

  # 画面をリロードした場合の対策
  $r->get('/item1')->to('root#item');
  $r->get('/item2')->to('root#item');



}

1;

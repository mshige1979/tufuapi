package Tufu::Web::Root;
use Mojo::Base 'Mojolicious::Controller';

# 初期ページ表示
sub index {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  $self->render(msg => 'Welcome to the Mojolicious real-time web framework!');
}

1;

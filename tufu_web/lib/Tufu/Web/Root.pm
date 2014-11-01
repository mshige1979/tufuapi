package Tufu::Web::Root;
use Mojo::Base 'Mojolicious::Controller';

# 初期ページ表示
sub index {
  my $self = shift;

  # stash
  $self->stash->{google_code} = $ENV{'TUFUAPP_GOOGLE_CODE'};

  # view
  $self->render();

}

sub item {
  my $self = shift;

  $self->redirect_to("/");
}

1;

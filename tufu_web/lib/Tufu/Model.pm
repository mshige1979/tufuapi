package Tufu::Model{
    use Mouse;
    use Tufu::DB;
    use Tufu::Config::App;

    has 'db' => (
        is => 'ro',
        isa => 'Tufu::DB',
        lazy_build => 1
    );

    has 'connect_info' => (
        is => 'ro',
        isa => 'ArrayRef',
        lazy_build => 1
    );

    sub _build_connect_info{
        my $self = shift;
        Tufu::Config::App::config->{connect_info};
    }

    sub _build_db{
        my $self = shift;

        Tufu::DB->new(
            connect_info => $self->connect_info
        );

    }

    __PACKAGE__->meta->make_immutable();
}

1;

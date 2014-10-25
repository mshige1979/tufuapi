package Tufu::Model::Beer{
    use Mouse;
    use Tufu::Model::App;

    extends Tufu::Model::App;

    has 'table' => (
        is => 'ro',
        isa => 'Str',
        default => 'beer'
    );

    __PACKAGE__->meta->make_immutable();

}



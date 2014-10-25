package Tufu::Model::Food{
    use Mouse;
    use Tufu::Model::App;

    extends Tufu::Model::App;

    has 'table' => (
        is => 'ro',
        isa => 'Str',
        default => 'food'
    );

    __PACKAGE__->meta->make_immutable();

}



package Tufu::Model::App{
    use Mouse;
    use Tufu::Model;

    extends Tufu::Model;

    has 'table' => (
        is => 'ro',
        isa => 'Str',
    );

    __PACKAGE__->meta->make_immutable();

}



package Tufu::Model::Food{
    use Mouse;
    use Tufu::Model::App;

    extends Tufu::Model::App;

    has 'table' => (
        is => 'ro',
        isa => 'Str',
        default => 'food'
    );

    sub find{
        my ($self) = @_;

        my $data;
        $data = $self->db->single($self->table, {});
        return $data;

    }

    __PACKAGE__->meta->make_immutable();

}



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
        my $list = [];

        # 全件取得
        $data = $self->db->search($self->table, {});

        # ハッシュ型で設定
        while(my $row = $data->next()){
            push @{$list}, {
                id => $row->id,
                kind => $row->kind,
                item_name => $row->item_name
            };
        }

        # 結果返却
        return $list;

    }

    __PACKAGE__->meta->make_immutable();

}



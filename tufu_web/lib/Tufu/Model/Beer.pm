package Tufu::Model::Beer{
    use Mouse;
    use Tufu::Model::App;

    extends Tufu::Model::App;

    has 'table' => (
        is => 'ro',
        isa => 'Str',
        default => 'beer'
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
                maker => $row->maker,
                kind => $row->kind,
                item_name => $row->item_name,
                alcohol_content => $row->alcohol_content,
                prin_value => $row->prin_value,
                unit_name => $row->unit_name,
                make_end_flg => $row->make_end_flg,
                not_write_flg => $row->not_write_flg
            };
        }

        # 結果返却
        return $list;

    }

    __PACKAGE__->meta->make_immutable();

}



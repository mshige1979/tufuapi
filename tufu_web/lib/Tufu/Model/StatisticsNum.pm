package Tufu::Model::StatisticsNum{
    use Mouse;
    use Tufu::Model::App;

    extends Tufu::Model::App;

    has 'table' => (
        is => 'ro',
        isa => 'Str',
        default => 'statistics_num'
    );

    sub find{
        my ($self) = @_;

        my $data;
        my $list = [];

        # 全件取得
        $data = $self->db->search($self->table, {}, +{ order_by => 'year ASC' });

        # ハッシュ型で設定
        while(my $row = $data->next()){
            push @{$list}, [
                $row->year,
                $row->num_gk + 0,
                $row->num_male + 0,
                $row->num_female + 0,
            ];
        }

        # 結果返却
        return $list;

    }

    __PACKAGE__->meta->make_immutable();

}



{
    connect_info => [ "dbi:mysql:$ENV{'TUFUAPP_DATABASE'}:$ENV{'TUFUAPP_HOST'}", $ENV{'TUFUAPP_USER'}, $ENV{'TUFUAPP_PASS'}, +{ mysql_enable_utf8 => 1 } ]
}

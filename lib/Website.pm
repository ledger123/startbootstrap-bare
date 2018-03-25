package Website;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Load configuration from hash returned by "my_app.conf"
  my $config = $self->plugin('Config');

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer') if $config->{perldoc};

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('pages#home');
  $r->get('/rooms')->to('pages#rooms');
  $r->get('/finedining')->to('pages#finedining');
  $r->get('/meetings')->to('pages#meetings');
  $r->get('/healthclub')->to('pages#healthclub');
  $r->get('/reservation')->to('pages#reservation');
  $r->get('/contactus')->to('pages#contactus');

}

1;

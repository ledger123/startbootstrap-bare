package Website::Controller::Pages;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub home {
  my $c = shift;

  # Render template "pages/home.html.ep" with message
  $c->render(msg => 'Welcome to the Mojolicious real-time web framework!');
}

sub rooms {
  my $c = shift;

  # Render template "pages/home.html.ep" with message
  $c->render(msg => 'Welcome to the Mojolicious real-time web framework!');
}

sub contactus {
  my $c = shift;

  # Render template "pages/home.html.ep" with message
  $c->render(msg => 'Welcome to the Mojolicious real-time web framework!');
}



1;

use v5.26;

# This module loads all of the endpoint modules.

use Ghojo::Endpoint::Actions;
use Ghojo::Endpoint::Activity;
use Ghojo::Endpoint::Authorizations;
use Ghojo::Endpoint::Contents;
use Ghojo::Endpoint::DeploymentEnvironments;
use Ghojo::Endpoint::Gist;
use Ghojo::Endpoint::GitData;
use Ghojo::Endpoint::Integrations;
use Ghojo::Endpoint::Issues;
use Ghojo::Endpoint::Labels;
use Ghojo::Endpoint::Meta;
use Ghojo::Endpoint::Migrations;
use Ghojo::Endpoint::Miscellaneous;
use Ghojo::Endpoint::Organizations;
use Ghojo::Endpoint::PullRequests;
use Ghojo::Endpoint::Reactions;
use Ghojo::Endpoint::Repositories;
use Ghojo::Endpoint::Search;
use Ghojo::EndPoint::Actions::Secrets::Repository;
use Ghojo::Endpoint::Users;

=encoding utf8

=head1 SOURCE AVAILABILITY

This module is in Github:

	https://github.com/briandfoy/ghojo

=head1 AUTHOR

brian d foy, C<< <briandfoy@pobox.com> >>

=head1 COPYRIGHT AND LICENSE

Copyright © 2016-2024, brian d foy <briandfoy@pobox.com>. All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the Artistic License 2. A LICENSE file should have accompanied
this distribution.

=cut

__PACKAGE__

use v5.24;
use experimental qw(signatures);

package Ghojo::Endpoint::Actions;

our $VERSION = '1.001001';

use Mojo::Collection;
use Mojo::URL;

=encoding utf8

=head1 NAME

Ghojo::Endpoint::Actions - The endpoints that deal with activity

=head1 SYNOPSIS


=head1 DESCRIPTION

	Actions
		Artifacts
		Permissions
		Secrets
		Self-hosted runners
		Self-hosted runner groups
		Workflows
		Workflow jobs
		Workflow runs


=head2 Workflow runs

=cut


sub Ghojo::AuthenticatedUser::get_workflow_run ( $self, $owner, $repo, $run_id ) {
# GET /repos/{owner}/{repo}/actions/runs/{run_id}
	$self->entered_sub;
	state $endpoint_profile = {
		params => {
			owner  => qr/\A\w+\z/,
			repo   => qr/\A\w+\z/
			run_id => qr/\A\d+\z/,
			},
		};

	my $result = $self->delete_single_resource(
		endpoint         => '/repos/:owner/:repo/actions/runs/:run_id',
		endpoint_params  =>  { owner => $owner, repo => $repo, run_id => $run_id },
		endpoint_profile => $endpoint_profile,
		bless_into       => 'Ghojo::Data::Workflow::Run',
		);
	}

sub Ghojo::AuthenticatedUser::delete_workflow_run ( $self, $owner, $repo, $run_id ) {
#DELETE /repos/{owner}/{repo}/actions/runs/{run_id}
	$self->entered_sub;
	state $endpoint_profile = {
		params => {
			owner  => qr/\A\w+\z/,
			repo   => qr/\A\w+\z/
			run_id => qr/\A\d+\z/,
			},
		};

	my $result = $self->delete_single_resource(
		endpoint         => '/repos/:owner/:repo/actions/runs/:run_id',
		endpoint_params  =>  { owner => $owner, repo => $repo, run_id => $run_id },
		endpoint_profile => $endpoint_profile,
		bless_into       => 'Ghojo::Data::Workflow::Run',
		);
	}

sub Ghojo::AuthenticatedUser::cancel_workflow_run ( $self, $owner, $repo, $run_id ) {
#POST /repos/{owner}/{repo}/actions/runs/{run_id}/cancel
	$self->entered_sub;
	state $endpoint_profile = {
		params => {
			owner  => qr/\A\w+\z/,
			repo   => qr/\A\w+\z/,
			run_id => qr/\A\d+\z/,
			},
		};

	my $result = $self->post_single_resource(
		endpoint         => '/repos/:owner/:repo/actions/runs/:run_id/cancel',
		endpoint_params  =>  { owner => $owner, repo => $repo, run_id => $run_id },
		endpoint_profile => $endpoint_profile,
		bless_into       => 'Ghojo::Data::Workflow::Run',
		);
	}

sub Ghojo::AuthenticatedUser::rerun_workflow_run ( $self, $owner, $repo, $run_id ) {
#POST /repos/{owner}/{repo}/actions/runs/{run_id}/rerun
	$self->entered_sub;
	state $endpoint_profile = {
		params => {
			owner  => qr/\A\w+\z/,
			repo   => qr/\A\w+\z/,
			run_id => qr/\A\d+\z/,
			},
		};

	my $result = $self->post_single_resource(
		endpoint         => '/repos/:owner/:repo/actions/runs/:run_id/rerun',
		endpoint_params  =>  { owner => $owner, repo => $repo, run_id => $run_id },
		endpoint_profile => $endpoint_profile,
		bless_into       => 'Ghojo::Data::Workflow::Run',
		);
	}

sub Ghojo::AuthenticatedUser::get_workflow_run_usage ( $self, $owner, $repo, $run_id ) {
#GET /repos/{owner}/{repo}/actions/runs/{run_id}/timing
	$self->entered_sub;
	state $endpoint_profile = {
		params => {
			owner  => qr/\A\w+\z/,
			repo   => qr/\A\w+\z/,
			run_id => qr/\A\d+\z/,
			},
		};

	my $result = $self->get_single_resource(
		endpoint         => '/repos/:owner/:repo/actions/runs/:run_id/timing',
		endpoint_params  =>  { owner => $owner, repo => $repo, run_id => $run_id },
		endpoint_profile => $endpoint_profile,
		bless_into       => 'Ghojo::Data::Workflow::Run',
		);
	}

sub Ghojo::AuthenticatedUser::list_workflow_runs ( $self, $owner, $repo, $workflow_id ) {
#GET /repos/{owner}/{repo}/actions/workflows/{workflow_id}/runs
	$self->entered_sub;
	state $endpoint_profile = {
		params => {
			owner => qr/\A\w+\z/,
			repo  => qr/\A\w+\z/
			},
		};

	my $result = $self->delete_single_resource(
		endpoint         => '/repos/:owner/:repo/actions/workflows/:workflow_id/runs',
		endpoint_params  =>  { owner => $owner, repo => $repo },
		endpoint_profile => $endpoint_profile,
		bless_into       => 'Ghojo::Data::Reaction',
		);
	}

=head1 SOURCE AVAILABILITY

This module is in Github:

	git://github.com/briandfoy/ghojo.git

=head1 AUTHOR

brian d foy, C<< <bdfoy@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright © 2016-2021, brian d foy <bdfoy@cpan.org>. All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the Artistic License 2. A LICENSE file should have accompanied
this distribution.

=cut

__PACKAGE__

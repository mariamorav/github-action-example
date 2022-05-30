# Github action example

## Environment secrets

The `build and test` workflow is defined to run when a pull request is open and when commits are pushed to the pull request.

The secrets needed for this workflow are:

- SEVERITY = HIGH (HIGH | LOW define the severity to be evaluate of the issues returned by gosec)
- LIMIT_ISSUES = 0 (Int value this will be define the limit of issues allowed. 0 default)

`Deploy dev` workflow is for deploy the service to the cluster using skaffold. It needs the following secrets:

- KUBE_CONFIG
- CLUSTER_CONTEXT
- HARBOR_URL
- HARBOR_PASSWORD
- HARBOR_USERNAME
- K8S_SECRETS
- HAS_SECRETS

## Branch protection rules

dev:

- push: no-one
- merge: developer
- approvals: two-developers

test:

- push: no-one
- merge: developer
- approvals: two-developers

staging:

- push:no-one
- merge:leader
- approvals:one-leader

main:

- push:no-one
- merge:leader
- approvals:two-leaders

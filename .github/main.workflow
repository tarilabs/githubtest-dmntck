workflow "New workflow" {
  on = "push"
  resolves = ["debug"]
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@b2bea07"
  args = "tag publish*"
}

action "debug" {
  uses = "actions/bin/debug@bd85fd8"
  needs = ["Filters for GitHub Actions"]
}

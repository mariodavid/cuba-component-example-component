workflow "Build and Test" {
  on = "push"
  resolves = ["Build"]
}

action "Build" {
  uses = "MrRamych/gradle-actions@1.0"
  args = "startDb createTestDb check assemble"
}

workflow "Release" {
  on = "release"
  resolves = ["Release to Bintray"]
}

action "Release to Bintray" {
  uses = "MrRamych/gradle-actions@1.0"
  args = "clean assemble bintrayUpload --debug"
  secrets = ["BINTRAY_USERNAME", "BINTRAY_PASSWORD"]
}

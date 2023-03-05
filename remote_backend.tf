terraform {
  cloud {
    organization = "armandabiri"

    workspaces {
      name = "Training-Workspace"
    }
  }
}
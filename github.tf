provider "github" {
  token =""
}

resource "github_repository" "terrafrom" {
      name        = "terrafrom-github_repository"
      description = "terrafrom-script"
      visibility = "public"
      auto_init = "true"
  
}
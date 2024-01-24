provider "github" {
    token = "github token come here"
}


resource "github_repository" "terraform-rep" {
  name        = "first-repo-using-terraform"
  description = "this is an test repo"
  visibility = "public"
  auto_init = true

}
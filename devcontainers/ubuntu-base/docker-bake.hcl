variable "OWNER" {
  default = "opslabhq"
}

variable "GROUP" {
  default = "devcontainers"
}

variable "FILE" {
  default = "ubuntu-base"
}

variable "TAG" {
  default = "latest"
}

group "default" {
  targets = ["build"]
}

target "settings" {
  context = "."
  cache-from = [
    "type=gha"
  ]
  cache-to = [
    "type=gha,mode=max"
  ]
}

target "test" {
  inherits = ["settings"]
  platforms = [
    "linux/amd64",
    "linux/arm64",
  ]
  tags = []
}

target "build" {
  inherits = ["settings"]
  output   = ["type=docker"]
  tags = [
    "${OWNER}/${FILE}",
    "${OWNER}/${FILE}:${TAG}",
  ]
}

target "push" {
  inherits = ["settings"]
  output   = ["type=registry"]
  platforms = [
    "linux/amd64",
    "linux/arm64",
  ]
  tags = [
    "public.ecr.aws/${OWNER}/${GROUP}/${FILE}",
    "public.ecr.aws/${OWNER}/${GROUP}/${FILE}:${TAG}",
  ]
}
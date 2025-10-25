variable "filename" {
    description = "the name of the file to create"
    type = string
    default = "example.txt"
}
variable "content" {
    description = "the content to put inside the file"
    type = string
    default = "Hello from Jenkins!"
}

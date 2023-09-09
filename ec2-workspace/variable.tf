variable "instance" {
    description = "name of the instances"
    type = list(string)
    default = [ "dev" , "test"]
}
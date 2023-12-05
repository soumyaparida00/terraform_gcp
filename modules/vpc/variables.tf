variable "project_id" {
    description = "The ID of the project where this VPC will be created"
    type = string
    default = "vtb2017-186514"
}
variable "vpc_name" {
    description = "value"
    type = string
    default = "test-vpc"
}
variable "vpc_cidr" {
    description = "value"
    type = string
    default = "10.0.0.0/16"
}
variable "region" {
    description = "value"
    type = string
    default = "asia-south1"
}
variable "subnet_names" {
    description = "value"
    type = list(string)
    default = [ "test-1", "test-2", "test-3" ]
}
variable "subnet_cidr_range" {
    description = "value"
    type = list(string)
    default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]
}
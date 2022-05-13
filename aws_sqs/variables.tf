variable "access_key" {
        description = "Access key to AWS console"
        default     =    "<access_key>"
}
variable "secret_key" {
        description = "Secret key to AWS console"
        default     =    "<secret_key>"
}


variable "sqs_name" {
        description = "Name of the sqs queue to be created"
        default = "my-sqs"
}

variable "region" {
    
    type              =    string
    default           =    ""

}
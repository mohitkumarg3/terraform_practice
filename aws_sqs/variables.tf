variable "access_key" {
        description = "Access key to AWS console"
        default     =    ""
        type        =    string
}
variable "secret_key" {
        description = "Secret key to AWS console"
        default     =    ""
        type        =    string
}


variable "sqs_name" {
        description = "Name of the sqs queue to be created"
}

variable "region" {
    
    type              =    string
    default           =    ""

}

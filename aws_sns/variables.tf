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


variable "sns_name" {
        description = "Name of the SNS Topic to be created"
}


variable "region" {
    
    type              =    string
    default           =    ""

}

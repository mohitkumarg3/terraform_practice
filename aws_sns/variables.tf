variable "access_key" {
        description = "Access key to AWS console"
        default     =    "<access_key>"
}
variable "secret_key" {
        description = "Secret key to AWS console"
        default     =    "<secret_key>"
}


variable "sns_name" {
        description = "Name of the SNS Topic to be created"
        default = "my_first_sns"
}

variable "account_id" {
        description = "My Accout Number"
        default = "<account_id>"
}

variable "region" {
    
    type              =    string
    default           =    ""

}
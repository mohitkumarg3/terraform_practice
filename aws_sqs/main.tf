resource "aws_sqs_queue" "first_sqs" {
  name = var.sqs_name
}

resource "aws_sqs_queue_policy" "sqs_policy" {
  queue_url = aws_sqs_queue.first_sqs.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqspolicy",
  "Statement": [
    {
      "Sid": "First",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:SendMessage",
      "Resource": "${aws_sqs_queue.first_sqs.arn}"
    }
  ]
}
POLICY
}

# data "aws_sns_topic" "example" {
  
#     name                        =    "my_first_sns"

# depends_on = [
    
#     aws_sqs_queue.first_sqs
  
#   ]
# }
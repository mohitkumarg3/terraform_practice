resource "aws_sns_topic" "sns_topic" {
  name = var.sns_name
}

resource "aws_sns_topic_policy" "sns_policy" {
  arn = aws_sns_topic.sns_topic.arn

  policy = data.aws_iam_policy_document.custom_sns_policy.json
}

data "aws_iam_policy_document" "custom_sns_policy" {
  policy_id = "__default_policy_ID"

  statement {
    actions = [
      "SNS:Subscribe",
      "SNS:SetTopicAttributes",
      "SNS:RemovePermission",
      "SNS:Receive",
      "SNS:Publish",
      "SNS:ListSubscriptionsByTopic",
      "SNS:GetTopicAttributes",
      "SNS:DeleteTopic",
      "SNS:AddPermission",
    ]

    # condition {
    #   test     = "StringEquals"
    #   variable = "AWS:SourceOwner"

    #   values = [
    #     var.account_id,
    #   ]
    # }

    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    resources = [
      aws_sns_topic.sns_topic.arn,
    ]

    sid = "__default_statement_ID"
  }
}

# data "aws_sns_topic" "example" {
  
#     name     =    "my_first_sns"

#   depends_on = [
    
#     aws_sns_topic.sns_topic
  
#   ]
# }

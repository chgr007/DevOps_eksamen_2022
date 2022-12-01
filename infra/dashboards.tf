resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = var.candidate_id
  ## Jim; seriously! we can use any word here.. How cool is that?
  dashboard_body = <<DASHBOARD
{
  "widgets": [
    {
      "type": "metric",
      "x": 13,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "cart_count.value"
          ]
        ],
        "period": 60,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total number of carts"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 7,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "carts_sum.value"
          ]
        ],
        "period": 60,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total cart value"
      }
    },
    {
      "type": "metric",
      "x": 13,
      "y": 7,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "carts_checkout.count"
          ]
        ],
        "period": 60,
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total number of checked out carts"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 14,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          ["${var.candidate_id}", "checkout_t.max", "exception", "None", "method", "POST", "uri", "/cart/checkout", "outcome", "SUCCESS", "status", "200" ]
        ],
        "view": "timeSeries",
        "period": 60,
        "stat": "Average",
        "region": "eu-west-1",
        "title": "Average time of checkout request"
      }
    }
  ]
}
DASHBOARD
}
resource "aws_route53_zone" "custodian-test-hosted-zone" {
    name = "custodian.net"

    tags = {
        "TestTag" = "yes"
    }
}

resource "aws_route53_record" "test-custodian-r53-record" {
  zone_id = aws_route53_zone.custodian-test-hosted-zone.zone_id
  name    = "test.custodian.net"
  type    = "A"
  ttl     = "300"
  records = ["1.1.1.1"]
}
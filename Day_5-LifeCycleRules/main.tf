resource "aws_instance" "CBD" {
    ami = "ami-0f1dcc636b69a6438"
    instance_type = "t2.nano"
    availability_zone = "ap-south-1b"

    # lifecycle {
    #   prevent_destroy = true
    # }

    # lifecycle {
    #   ignore_changes = [ tags ]
    # }

    lifecycle {
      create_before_destroy = true
    }
  
}

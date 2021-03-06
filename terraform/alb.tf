resource "aws_alb" "GccExplorerApp" {
  idle_timeout = 60
  internal = false
  name = "GccExplorerApp"
  security_groups = [
    "${aws_security_group.CompilerExplorerAlb.id}"]
  subnets = [
    "${aws_subnet.ce-1a.id}",
    "${aws_subnet.ce-1b.id}",
    "${aws_subnet.ce-1c.id}",
    "${aws_subnet.ce-1d.id}",
    "${aws_subnet.ce-1e.id}",
    "${aws_subnet.ce-1f.id}"
  ]

  enable_deletion_protection = false

  tags {
    "Site" = "CompilerExplorer"
  }
}


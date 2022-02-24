resource "local_file" "instance_profile" {
  content = templatefile("${path.module}/templates/instance_profile.tpl",
    {
      server_iam_profile = aws_iam_instance_profile.server_iam_profile.name
      agent_iam_profile = aws_iam_instance_profile.agent_iam_profile.name
    }
  )
  filename = "instance_profile.yml"
}
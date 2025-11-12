data "aws_ami" "joindevops" {

    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_ssm_parameter" "bastion_sg_id" {
  name = "/${var.project_name}/${var.environment}/bastion_sg_id"
}

data "aws_ssm_parameter" "database_subnet_id" {
name  = "/${var.project_name}/${var.environment}/database_subnet_id"

}

data "aws_ssm_parameter" "mongodb_sg_id" {
name  = "/${var.project_name}/${var.environment}/mongodb_sg_id"

}

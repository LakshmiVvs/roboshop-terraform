variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "zone_id" {
    default = "Z10350463VX3CGVC2HYGT"
}

variable "domain_name" {
    default = "lakshmimopidevi.fun"
}

variable "sg_names" {
    default = [
        # databases
        "mongodb", "redis", "mysql", "rabbitmq",
        # backend
        "catalogue", "user", "cart", "shipping", "payment",
        # frontend
        "frontend",
        # bastion
        "bastion",
        # frontend load balancer
        "frontend_alb",
        # Backend ALB
        "backend_alb"
    ]
}
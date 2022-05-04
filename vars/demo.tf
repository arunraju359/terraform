variable "sample" {
    default = "hello from variable"
}

output "sample"{
    value = var.sample
}

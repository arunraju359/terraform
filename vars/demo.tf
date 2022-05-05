variable "sample" {
    default = "hello from variable"
}

output "sample"{
    value = var.sample
}

variable "number"{
    default = "3487t3874"

}

output "number"{
    value = var.number
}

variable "sample-list"{
    default = [
        "DevOps"
        "Arun"
        "Uk"

    ]
}

output "sample-list" {
    value = "welcome ${var.sample-list[0]}"
  
}


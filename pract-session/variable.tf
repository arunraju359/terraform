output "sample"{
    value = "Hello world"
}


variable "list"{
    default=["Chennai","Karnataka","Bangalore"]
}

output "sample-list"{
    value= "The capital of TN is ${var.list[0]}"
}

variable State {}

output "state"{
    value = "The state is ${var.State}"
}


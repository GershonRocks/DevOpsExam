variable "namespace" {
  description = "Kubernetes namespace"
  type        = string
  default     = "exam"
}

variable "service_ports" {
  description = "List of ports for the service"
  type        = list(object({
    port        = number
    target_port = number
  }))
  default     = [
    {
      port        = 80
      target_port = 80
    }
  ]
}


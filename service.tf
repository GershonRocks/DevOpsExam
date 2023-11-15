resource "kubernetes_service" "nginx" {
  metadata {
    name      = "nginx"
    namespace = kubernetes_namespace.exam.metadata[0].name
  }

  spec {
    selector = {
      app = "nginx"
    }

    port {
      port        = var.service_ports[0].port
      target_port = var.service_ports[0].target_port
    }
  }
}

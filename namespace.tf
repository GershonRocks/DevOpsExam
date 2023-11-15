resource "kubernetes_namespace" "exam" {
  metadata {
    name = var.namespace
  }
}

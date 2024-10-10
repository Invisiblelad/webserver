resource "kubernetes_service" "web-svc" {
    metadata {
      name = "webpage"
    }
    spec {
      selector = {
            app = "webpage"
    }
      port {
        port = 5000
        target_port = 5000
      }
      type = "NodePort"
}
}

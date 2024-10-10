resource "kubernetes_service" "web-svc" {
    metadata {
      name = "webpage"
    }
    spec {
      selector = {
            app = "webserver"
    }
      port {
        port = 5000
        target_port = 5000
      }
      type = "NodePort"
}
}

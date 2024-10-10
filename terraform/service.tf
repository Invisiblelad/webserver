resource "kubernetes_service" "web-svc" {
    metadata {
      name = "webpage"
    }
    spec {
      selector = {
        match_labels = {
            app = "webserver"
        }
    }
      port {
        port = 5000
        target_port = 5000
      }
      type = "NodePort"
}
}

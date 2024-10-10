resource "kubernetes_deployment" "webpage" {
    metadata {
      name = "webpage"
      namespace = "default"
    }
    spec {
      replicas = 1
      selector {
        match_labels = {
          app = "webserver"
        }
      }
      template {
        metadata {
          labels = {
            app = "webpage"
          }
        }
        spec {
          container {
            name = "webserver"
            image = "${var.docker_image}:${var.image_tag}"
            port {
              container_port = 5000
            }
          }
        }
      }
    }
       
}

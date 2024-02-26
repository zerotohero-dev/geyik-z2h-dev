<script>
document.getElementById('terminal-mkdocs-side-panel').style.display = "none";
document.getElementsByClassName('terminal-mkdocs-main-grid')[0].style.display="block";
document.body.style.backgroundColor = '#D0C9A6';
function remove() {
  try {
    document.getElementsByClassName('terminal-mkdocs-footer-grid')[0].style.display="none";
  } catch (e) {
    setTimeout(remove, 16);
  }
}
remove();
</script>

# Kubernetes Architecture


<pre style="width:1215px;color:#0000ff">
◀───────External──────▶  ◀─────────────────────────────────────Kubernetes Cluster────────────────────────────▶
        Systems                                                                                               
                                                                                                              
                                                 Control Plane                               Worker Node      
                         ┌ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┐  ┌ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ 
                            ┌──────────────┐     ┌───────────┐                           ┌──────────────────┐│
                         │  │kube-scheduler│     │   etcd    │           ┌─────────┼──┼─▶│    kube-proxy    │ 
┌──────┐   ┌───────┐        └───────▲──────┘     └─────▲─────┘           │               └──────────────────┘│
│humans│──▶│kubectl│───┐ │          │                  │                 │         │  │                       
└──────┘   └───────┘   │            │                  │                 │                                   │
┌──────────────────┐   │ │  ┌───────┴──────────────────┴─────────────────▼───────┐ │  │  ┌──────────────────┐ 
│  CI/CD Systems   │───┼───▶│                  kube-api-server                   │──────▶│     kubelet      ││
└──────────────────┘   │ │  └───────────┬───────────────────────────▲────────────┘ │  │  └──────────────────┘ 
┌──────────────────┐   │                │                           │                              │         │
│  Apps (via SDK)  │───┘ │              │                           │              │  │            ▼          
└──────────────────┘        ┌───────────▼───────────┐  ┌─────────────────────────┐       ┌──────────────────┐│
                         │  │kube-controller-manager│  │cloud-controller-manager │ │  │  │Container Runtime │ 
                            └───────────────────────┘  └────────────▲────────────┘       └──────────────────┘│
                         └ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─│─ ─ ─ ─ ─ ─ ─ ┘  └ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ 
                                                                    │                                         
                                                        ┌───────────────────────┐                             
                                                        │  Cloud Provider APIs  │                             
                                                        └───────────────────────┘                             
</pre>


[« Flavors of Kubernetes](001-006-flavors-of-kubernetes.md) | [Practice Time »](001-008-practice-time.md)

<!--

Kubernetes Architecture:
Kubernetes clusters consist of a master node (control plane) managing worker nodes 
where containers run, ensuring a highly available, fault-tolerant system."

Ecosystem and Extensibility:
Kubernetes supports a vast ecosystem of add-ons and plugins, making it highly 
extensible to suit diverse operational needs.

Why Kubernetes?
Kubernetes simplifies the complexity of managing containerized applications, 
making it easier to deploy, scale, and manage applications reliably and efficiently.

Use Case:
Used by small startups to large enterprises, Kubernetes is ideal for cloud-native 
applications, microservices architectures, and achieving DevOps goals.

Kubernetes stands out as a comprehensive, robust, and widely adopted platform for 
container orchestration, essential for modern application deployment and management.

-->
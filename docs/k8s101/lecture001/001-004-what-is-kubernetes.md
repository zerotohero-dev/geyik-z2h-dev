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

# What is Kubernetes?

* Kubernetes (`k8s`) is an open-source platform designed to automate deploying, 
  scaling, and operating application containers.

## Origin

* First Developed By Google
* Maintained by the Cloud Native Computing Foundation

## Core Features

* Automated Scheduling
* Self-Healing
* Horizontal Scaling
* Service Discovery
* Load Balancing
* Automated Rollouts and Rollbacks

----

[« What is Orchestration?](001-003-what-is-orchestration.md) | [Why Kubernetes »](001-005-why-kubernetes.md)

<!--

Definition:
Begin with a succinct definition: "Kubernetes, often abbreviated as k8s, is an open-source 
platform designed to automate deploying, scaling, and operating application containers.

Origin and Popularity:
Brief historical context: "Developed by Google and now maintained by the 
Cloud Native Computing Foundation, Kubernetes has become the leading container 
orchestration platform.

Core Features:
Automated Scheduling: Efficiently allocates containers to nodes.
Self-Healing: Automatically restarts failed containers.
Horizontal Scaling: Scales applications up or down with simple commands.
Service Discovery and Load Balancing: Manages networking between containers.
Automated Rollouts and Rollbacks: Manages application updates seamlessly.


Definition:
Begin with a succinct definition: "Kubernetes, often abbreviated as k8s, is an open-source 
platform designed to automate deploying, scaling, and operating application containers.

Origin and Popularity:
Brief historical context: "Developed by Google and now maintained by the 
Cloud Native Computing Foundation, Kubernetes has become the leading container 
orchestration platform.

Core Features:
Automated Scheduling: Efficiently allocates containers to nodes.
Self-Healing: Automatically restarts failed containers.
Horizontal Scaling: Scales applications up or down with simple commands.
Service Discovery and Load Balancing: Manages networking between containers.
Automated Rollouts and Rollbacks: Manages application updates seamlessly.

-->
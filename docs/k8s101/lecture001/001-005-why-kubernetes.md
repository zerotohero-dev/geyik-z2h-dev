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

# Why Kubernetes

## Docker Compose vs. Kubernetes

* *Docker Compose* is a **basic** tool for defining and running multi-container Docker applications.
* *Kubernetes* is a **comprehensive** platform for managing containerized applications at scale.

## Tool Comparison

* *Docker Compose* is like a swiss army knife, useful for small tasks.
* *Kubernetes* is like a complete toolbox, equipped for a wide range of functions
  from simple to complex projects.

## Complexity and Scope

* Deployment and Management
* Scaling and Performance
* Reliability and Availability
* Security and Compliance
* Observability and Diagnostics
* Networking and Storage
* Federation
* Extensibility

## The Need for Advanced Orchestration

* As apps grow in complexity and scale, the need for advanced orchestration 
  becomes evident.

<!-- insert visual aids here -->

[« What Is Kubernetes?](001-004-what-is-kubernetes.md) | [Flavors of Kubernetes »](001-006-flavors-of-kubernetes.md)

<!--

Deployment and Management: Deployment, Rolling Updates, Configuration Management, Scheduling.
Scaling and Performance: Load Balancing, Scaling, Resource Management.
Reliability and Availability: Health Monitoring, Self-Healing, Service Discovery.
Security and Compliance: Secrets Management, Security, Multi-tenancy.
Networking and Storage: Networking, Storage.
Observability and Diagnostics: Logging and Monitoring.
Advanced Features: Federation, Extensibility.

While Docker Compose offers basic orchestration features, managing a production-grade, 
scalable, and resilient application requires a more comprehensive set of functionalities.

This is where advanced orchestration tools like Kubernetes come into play, offering 
a wide range of capabilities to address complex operational challenges.

Think of Docker Compose as a multitool, useful for small tasks. Kubernetes, on the other 
hand, is like a complete toolbox, equipped for a wide range of functions from simple 
to complex projects.

xKubernetes and similar tools provide a comprehensive solution that ensures your 
containerized applications are not only running but are also efficient, secure, 
and resilient.

As applications grow in complexity and scale, the need for advanced orchestration becomes 
evident. Kubernetes fills this gap, offering a robust platform for managing 
containerized applications at scale.

While Docker Compose is suitable for simpler applications, a full-fledged orchestration 
system like Kubernetes is essential for effectively managing complex, large-scale, 
and mission-critical applications.

-->
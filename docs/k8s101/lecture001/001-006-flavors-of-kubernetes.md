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

# Flavors of Kubernetes

## What is a Flavor?

* A specific version or variety of Kubernetes tailored to specific needs or environments.

## Key Flavors

* Vanilla Kubernetes
* Cloud Provider Distributions ([GKE](https://cloud.google.com/kubernetes-engine) , [EKS](https://aws.amazon.com/eks/), [AKS](https://azure.microsoft.com/en-us/products/kubernetes-service), [LKE](https://www.linode.com/lp/kubernetes))
* Enterprise Distributions ([RedHat OpenShift](https://www.redhat.com/en/solutions), [VMware Tanzu](https://tanzu.vmware.com/tanzu))
* Lightweight Distributions ([K3s](https://k3s.io), [MicroK8s](https://microk8s.io))

## Choosing the Right Flavor

* Underlying infrastructure 
* Scalability needs
* Integration with other services 
* Operational complexity

[« Why Kubernetes](001-005-why-kubernetes.md) | [Kubernetes Architecture »](001-007-kubernetes-architecture.md) 

<!--

Kubernetes, as an open-source container orchestration platform, has inspired a 
variety of distributions and platforms, each tailored to specific needs or 
environments.

These 'flavors' of Kubernetes are designed to provide additional functionality, 
ease of use, integration with specific cloud providers, or optimizations for 
specific types of workloads.

Major Flavors of Kubernetes:
Vanilla Kubernetes: "The original, pure open-source Kubernetes, offering maximum flexibility but requiring more setup and maintenance."
Cloud Provider Distributions:
Google Kubernetes Engine (GKE): "Optimized for Google Cloud Platform, offering deep integration with GCP services."
Amazon Elastic Kubernetes Service (EKS): "Tailored for AWS, providing seamless integration with AWS services."
Azure Kubernetes Service (AKS): "Designed for Azure, featuring integration with Azure services and infrastructure."

Enterprise Distributions:
Red Hat OpenShift: "An enterprise-grade distribution that offers additional security, productivity features, and full lifecycle management."
VMware Tanzu: "Focused on integrating Kubernetes with VMware's infrastructure, offering robust management tools and services."
Lightweight Distributions:
K3s: "A lightweight, easy-to-install version of Kubernetes, ideal for edge, IoT, and resource-constrained environments."
MicroK8s: "A minimal, snap-install Kubernetes for developers, local testing, and IoT devices."

Choosing the Right Flavor:
The choice of Kubernetes flavor depends on factors like the underlying infrastructure, 
scalability needs, integration with other services, and operational complexity.

Each Kubernetes flavor offers unique benefits and trade-offs, making Kubernetes 
adaptable to a wide range of environments and requirements.

-->
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

# Agenda

## Lecture 001: Introduction

* What is a Container?
* Why Containers?
* What is Orchestration?
* What is Kubernetes?
* Why Kubernetes?
* Flavors of Kubernetes
* Kubernetes Architecture

## Lecture 001: Labs

* **Lab**: Creating a Client-Server App on Kubernetes

----

[« Prerequisites](000-prerequisites.md) | [What is a Container? »](001-001-what-is-a-container.md)

<!--

Container and Kubernetes Relationship:
Kubernetes is an orchestration system for containers. It helps in automating deployment, scaling, and management of containerized applications.
Image and Registry Concept:
Containers are created from images, which are stored in registries like Docker Hub. An image is a snapshot of a container with all the necessary components to run an application.
Lifecycle of a Container:
A container's lifecycle begins with creating an image, followed by running it in an isolated environment. Containers can be stopped, started, moved, and deleted.
Real-World Example:
For instance, a container might run a web server with all needed files and dependencies, ensuring that it works the same way on any system.
Key Takeaway:
Containers are fundamental to Kubernetes as they offer a lightweight, consistent, and efficient way to run and manage applications across different environments.

-->
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
</script># Why Containers?

* Efficiency
* Speed
* Consistency
* Isolation
* Scalability

----

[« What Is a Container?](001-001-what-is-a-container.md) | [What Is Orchestration? »](001-003-what-is-orchestration.md)

<!--

Benefits of Containers

Efficiency: Use system resources more effectively than VMs.
Speed: Faster start-up time compared to VMs.
Consistency: Provide consistent environment across development, testing, and production.
Isolation: Processes are isolated from the host and each other, improving security.
Scalability: Easier to scale and distribute across different environments.

-->
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

# What Is a Container?

* A Lightweight, Stand-Alone, Executable Package of Software

## Containers vs. Virtual Machines

* Apartments in a Building vs. Separate Houses

----

[« Agenda](001-agenda.md) | [Why Containers? »](001-002-why-containers.md)

<!--
A container is a lightweight, stand-alone, executable package of software that 
includes everything needed to run a piece of software, including the code, a 
runtime, libraries, environment variables, and config files.

Containers vs. Virtual Machines:
Think of containers like apartments in a building (the host system), where each 
apartment (container) has its own utilities and furniture (libraries, runtime), 
but shares the building’s infrastructure (OS kernel). 
In contrast, virtual machines are like separate houses (complete OS), each with 
its own infrastructure.
-->
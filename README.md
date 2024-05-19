<h1 align="center">🐳 LocalEnv</h1>

<p align="center">Containerized Environment supports various languages.</p>

## Prerequisites 🔓

Before you begin, ensure that you have Docker installed. It's also helpful to have a basic understanding of Docker concepts.

## Config file

Configure your target environment via [config.yaml](config.yaml), for example:

```yaml
python:
  image: 'python:3.12'
  default_container_name: 'pyEnv'
  base_command: 'python'
```

## Supported Environment

<table>
    <tr>
        <th>Language</th>
        <th>Quick Start</th>
        <th>User guide</th>
        <th>Docker Image</th>
    </tr>
    <tr>
        <td>Python</td>
        <td>./cei python env/python/demo.py</td>
        <td><a href="./env/python/">python</a></td>
        <td><a href="https://hub.docker.com/_/python">Find</a></td>
    </tr>
    <tr>
        <td>Powershell</td>
        <td>./cei powershell env/powershell/demo.ps1</td>
        <td><a href="./env/powershell/">powershell</a></td>
        <td><a href="https://hub.docker.com/_/microsoft-powershell">Find</a></td>
    </tr>
    <tr>
        <td>Groovy</td>
        <td>./cei groovy env/groovy/demo.groovy</td>
        <td><a href="./env/groovy/">groovy</a></td>
        <td><a href="https://hub.docker.com/_/groovy">Find</a></td>
    </tr>

</table>

## Troubleshooting

- For common issue, visit [troubeshooting.md](./docs/troubeshooting.md)

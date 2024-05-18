<h1 align="center">LocalEnv</h1>

<p align="center">Local containerized environment supports various languages.</p>

## Prerequisites 🔓

Before you begin, ensure that you have Docker installed. It's also helpful to have a basic understanding of Docker concepts.

## Supported Environment

<table>
    <tr>
        <th>Language</th>
        <th>DockerHub Image</th>
        <th>Content</th>
        <th>Quick Start</th>
        <th>User guide</th>
    </tr>
    <tr>
        <td>Python</td>
        <td><a href="https://hub.docker.com/_/python">python image</a></td>
        <td><a href="./env/python/">python</a></td>
        <td>`./lei.sh python env/python/src/demo/demo.py`</td>
        <td>✔️ <a href="./env/python/README.md">Python Usage</a></td>
    </tr>
    <tr>
        <td>Powershell</td>
        <td><a href="https://hub.docker.com/_/microsoft-powershell">microsoft-powershell</a></td>
        <td><a href="./env/powershell/">powershell image</a></td>
        <td>`./lei.sh powershell env/powershell/src/demo/demo.ps1`</td>
        <td>✔️ <a href="./env/powershell/README.md">Powershell Usage</a></td>
    </tr>
    <tr>
        <td>Groovy</td>
        <td><a href="https://hub.docker.com/_/groovy">groovy image</a></td>
        <td><a href="./env/groovy/">groovy</a></td>
        <td>`./lei.sh groovy env/groovy/src/demo/demo.groovy`</td>
        <td>✔️ <a href="./env/groovy/README.md">Groovy Usage</a></td>
    </tr>

</table>

## Troubleshooting

- For common issue, visit [troubeshooting.md](./docs/troubeshooting.md)

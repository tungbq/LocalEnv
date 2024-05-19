<h1 align="center">🐳 LocalEnv</h1>

<p align="center">Local Containerized Environment supports various languages</p>

## Prerequisites 🔓

Before you begin, ensure that you have [Docker](https://docs.docker.com/engine/install/) installed. It's also helpful to have a basic understanding of Docker concepts.

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
        <td>./localenv python env/python/demo.py</td>
        <td><a href="./env/python/">python</a></td>
        <td><a href="https://hub.docker.com/_/python">Find</a></td>
    </tr>
    <tr>
        <td>Powershell</td>
        <td>./localenv powershell env/powershell/demo.ps1</td>
        <td><a href="./env/powershell/">powershell</a></td>
        <td><a href="https://hub.docker.com/_/microsoft-powershell">Find</a></td>
    </tr>
    <tr>
        <td>Groovy</td>
        <td>./localenv groovy env/groovy/demo.groovy</td>
        <td><a href="./env/groovy/">groovy</a></td>
        <td><a href="https://hub.docker.com/_/groovy">Find</a></td>
    </tr>

</table>

## Usage

To use the LocalEnv tool, follow these steps:

### 1. Clone the repository:

```bash
git clone https://github.com/tungbq/LocalEnv.git
cd localenv
```

### 2. Configure your environment:

Edit the [config.yaml](config.yaml) file to specify the details of the environment you want to use, for example:

```yaml
python:
  image: 'python:3.12'
  default_container_name: 'pyEnv'
  base_command: 'python'
```

### 3. Run a script

Use the following command format to run your script within the containerized environment:

```bash
./localenv <language> <script_path>
```

For example, to run a Python script:

```bash
./localenv python env/python/demo.py
```

### 4. Access the user guide:

Refer to the user guide for detailed instructions on using each supported environment. Links to the user guides are available in the table above.

## Troubleshooting

- For common issue, visit [troubeshooting.md](./docs/troubeshooting.md)

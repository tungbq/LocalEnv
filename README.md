<h1 align="center">🐳 LocalEnv</h1>

<p align="center">Local Containerized Environment supports various languages</p>

## Introduction 👋

LocalEnv is a tool designed for local development, allowing you to execute code in multiple languages without installing numerous tools on your PC. With Docker as the only prerequisite, you can seamlessly run code in various environments.

## Prerequisites 🔓

Before you begin, ensure that you have [Docker](https://docs.docker.com/engine/install/) installed. It's also helpful to have a basic understanding of Docker concepts.

## Demo 🔥

```bash
git clone https://github.com/tungbq/LocalEnv.git
cd LocalEnv
./localenv python env/python/demo.py
```

## Supported Environment 🚀

Current support languages in below table

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

## Usage 📖

To use the LocalEnv tool, follow these steps:

### 1. Clone

- Clone the repository:

```bash
git clone https://github.com/tungbq/LocalEnv.git
cd LocalEnv
```

### 2. Configure

Configure your environment:

- Edit the [config.yaml](config.yaml) file to specify the details of the environment you want to use, for example:

```yaml
# File: ./config.yaml
python:
  image: 'python:3.12'
  default_container_name: 'pyEnv'
  base_command: 'python'
```

### 3. Code

Write your own code under [env](./env/), for example:

- Python: [python](./env/python/)
- Powershell: [powershell](./env/powershell/)

### 4. Run

Run a script:

- Use the following command format to run your script within the containerized environment:

```bash
./localenv <language> <script_path>
```

For example, to run a Python script:

```bash
./localenv python env/python/demo.py
```

### 5. More

Refer to the user guide for detailed instructions on using each supported environment. Links to the user guides are available in the table above.

## Troubleshooting

- For common issue, visit [troubeshooting.md](./docs/troubeshooting.md)

## Contributing

- If you find this repository helpful, kindly consider showing your appreciation by giving it a star ⭐ Thanks! 💖
- Feel free to open a new issue if you encounter the LocalEnv bug or want to request more content about LocalEnv
- Submit a new issue (🐛) if you encounter the bug/error when using this repo


# Inception Project

## 📋 Project Overview
**Inception** is a system administration project designed to enhance your understanding of containerization and infrastructure management using **Docker**. The objective is to set up a virtual machine with multiple services using **Docker** and **Docker Compose**.

---

## 🛠 Setup Instructions

### Step 1: Clone the Repository
\`\`\`bash
git clone git@github.com:imahri/inception_done.git
\`\`\`

### Step 2: Run the Project
\`\`\`bash
make
\`\`\`

### Step 3: Access the Services

- Visit the **WordPress** website:  
  [https://localhost:443](https://localhost:443)

- Visit the **Adminer** interface for database management:  
  [http://localhost:8080](http://localhost:8080)

- Visit the **Portainer** interface for Docker management:  
  [http://localhost:9443](http://localhost:9443)

---

## 📚 Docker Components

- \`Docker\` - Open-source platform for deploying, scaling, and managing applications in containers.
- \`Docker Compose\` - A tool for defining and running multi-container applications with a YAML configuration file.
- \`Docker Engine\` - The core component responsible for running and managing Docker containers.
- \`Containerd\` - Lightweight, extensible container runtime for managing containers' lifecycle.
- \`PID 1\` - The first process started in a Linux container, responsible for managing all other processes.
- \`Namespaces\` - Linux kernel feature that isolates system resources for containers.
- \`Cgroups\` - Control groups that manage resource allocation and usage for containers.

---

## 💻 Technologies Used

- \`Nginx\` - Web server and reverse proxy for handling HTTP traffic.
- \`MariaDB\` - Open-source relational database management system.
- \`WordPress\` - Open-source content management system.
- \`FTP\` - Protocol for transferring files over a network.
- \`Redis\` - In-memory data structure store for caching.
- \`Adminer\` - Database management tool.
- \`Portainer\` - Docker management UI for containerized applications.

---

## 🔧 Make Commands

- **Compile the project**:
  \`\`\`bash
  make
  \`\`\`

- **Compile with bonus services**:
  \`\`\`bash
  make bonus
  \`\`\`

---

## 🔖 Tags
- \`Docker\`
- \`Containerization\`
- \`Infrastructure as Code\`
- \`System Administration\`
- \`Nginx\`
- \`MariaDB\`
- \`Redis\`
- \`WordPress\`
- \`Virtual Machines\`
- \`DevOps\`

## Project Structure Automation

This repository contains a script to create a standardised project structure:

```bash
# Create project-structure.sh script
./project-structure.sh <project_name>
```

### What the Script Does

- Creates a structured directory hierarchy with 7 key areas
- Adds README files with descriptions in each directory
- Generates a main README with project documentation
- Shows the directory tree (if `tree` command is available)

### Directory Structure

```
<project_name>/
├── 1_Journey/       # Objectives and timeline tracking
├── 2_Real/          # Actual implementation and code
├── 3_Environment/   # Setup and configuration details
├── 4_UI/            # User interface and visual elements
├── 5_Formula/       # Technical procedures and documentation
├── 6_Symbols/       # Code implementation
└── 7_Semblance/     # Issue tracking and solutions
```

### Usage

Clone this repository, then:

```bash
chmod +x project-structure.sh
./project-structure.sh my_new_project
```

### Using the Script in Another Repository

To use this script in a different repository:

1. Copy the script to your target repository:
    ```bash
    curl -O https://raw.githubusercontent.com/yourusername/istio-argo-playground/main/project-structure.sh
    ```

2. Make it executable:
    ```bash
    chmod +x project-structure.sh
    ```

3. Run it in your target repository:
    ```bash
    ./project-structure.sh your_project_name
    ```

4. Alternatively, run it directly without saving:
    ```bash
    bash <(curl -s https://raw.githubusercontent.com/NawalC/Project-Structure-Automation/blob/main/project-structure.sh) your_project_name
    ```

Credits: Project structure inspired by [rifaterdemsahin](https://github.com/rifaterdemsahin)

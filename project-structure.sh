#!/bin/bash

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Usage: ./project-structure.sh <project_name>"
    exit 1
fi

PROJECT_NAME=$1

# Create main project directory
mkdir -p $PROJECT_NAME

# Create the directory structure
directories=(
    "1_Journey/timeline"
    "2_Real/implementation"
    "3_Environment/configs"
    "4_UI/screenshots"
    "5_Formula/docs"
    "6_Symbols/code"
    "7_Semblance/issues"
)

# Create directories
for dir in "${directories[@]}"; do
    mkdir -p "$PROJECT_NAME/$dir"
done

# Create basic README files with descriptions
declare -A files=(
    ["1_Journey/README.md"]="# Journey\nObjectives and timeline tracking"
    ["2_Real/README.md"]="# Real Implementation\nActual implementation and code"
    ["3_Environment/README.md"]="# Environment\nSetup and configuration details"
    ["4_UI/README.md"]="# UI\nUser interface and visual elements"
    ["5_Formula/README.md"]="# Formula\nTechnical procedures and documentation"
    ["6_Symbols/README.md"]="# Symbols\nCode implementation"
    ["7_Semblance/README.md"]="# Semblance\nIssue tracking and solutions"
)

# Create README files with content
for file in "${!files[@]}"; do
    echo -e "${files[$file]}" > "$PROJECT_NAME/$file"
done

# Create project documentation
cat > "$PROJECT_NAME/README.md" << 'EOT'
# Self Learning Project

Documentation for the Folder Structure

| Section             | Description                                               | Action        |
|---------------------|-----------------------------------------------------------|--------------|
| **🚀 Journey**      | Steps to mastering skills                                 | Feel it      |
| **🌍 Real**         | Work with real objectives and key results                 | Aim at it    |
| **🌳 Environments** | Learning roadmap and real-world use cases                 | Create it    |
| **🌌 Imaginary/UI** | Learn and track acquired skills                           | Imagine it   |
| **📐 Formulas**     | Guides and formulas for problem-solving                   | Learn from it |
| **🔣 Symbols**      | Code snippets and practical examples                       | Execute it   |
| **🌀 Semblance**    | Error tracking and solutions                              | Fix it       |

Practical Terminal Commands From Your Workstation

```bash
git pull; git add . ; git commit -m "Initial Commit" ; git push; clear

---

## Credits
Project structure inspiration by [rifaterdemsahin](https://github.com/rifaterdemsahin)

## License

This project is licensed under the [MIT License](LICENSE)
EOT

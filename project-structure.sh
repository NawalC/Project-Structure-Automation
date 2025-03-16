# istio-argo-playground
## Project Structure Automation

To create a standardised project structure:

```bash
# Create project-structure.sh script
cat > project-structure.sh << 'EOF'
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
files=(
    "1_Journey/README.md:# Journey\nObjectives and timeline tracking"
    "2_Real/README.md:# Real Implementation\nActual implementation and code"
    "3_Environment/README.md:# Environment\nSetup and configuration details"
    "4_UI/README.md:# UI\nUser interface and visual elements"
    "5_Formula/README.md:# Formula\nTechnical procedures and documentation"
    "6_Symbols/README.md:# Symbols\nCode implementation"
    "7_Semblance/README.md:# Semblance\nIssue tracking and solutions"
)
# Create README.md with project documentation
cat > "$PROJECT_NAME/README.md" << 'EOT'
# Self Learning Project 

Documentation for the Folder Structure
| Section             | Description                                                                                                               | Action              |
|---------------------|---------------------------------------------------------------------------------------------------------------------------|-------------------------------------|
| **🚀 Journey**      | *Visual Story Explained with Steps* - A self-learning guide from beginner to skilled in visual storytelling.              | Feel it |
| **🌍 Real**         | *The Job That Starts with Objective and Key Results* - Sets goals and objectives, aligning tasks with measurable results. | Aim at it   |
| **🌳 Environments** | *The Roadmap and Use Cases* - A roadmap with learning modules and real-world use cases to apply new skills.            | Create it |
| **🌌 Imaginary/UI**    | *What You Learn on the Road* - Tracks concepts, theories, and skills acquired, promoting continuous growth.            | Imagine it |
| **📐 Formulas**     | *The Guides That Are Mentioned* - Essential guides and formulas for understanding and solving project challenges.     |  Learn from it |
| **🔣 Symbols**      | *Code That Is Implemented* - Includes code snippets and examples to demonstrate each concept practically.              |  Execute it   |
| **🌀 Semblance**    | *Errors Found in the Process* - Documents mistakes and solutions, making errors valuable learning opportunities.       |  Fix it   |

Practical Terminal Commands From Your Workstation

```bash
git pull; git add . ; git commit -m "Thanos Proxy implement " -m "initial commit " ; git push;clear
```
Symbols/git_push.sh "living the dream"
Symbols/git_push.sh "nginx push"

## Credits
Project structure inspiration by [rifaterdemsahin](https://github.com/rifaterdemsahin)

## License

This project is licensed under the [MIT License](LICENSE)
EOT

# CODENTOOLS

A collection of simple yet practical programs and scripts created to simplify everyday tasks in dental laboratory settings. This repository is the work of a dental technician with over 20 years of experience who is also a programming enthusiast.

## Overview

These tools were born from real-world needs in a working dental lab. They're designed to be straightforward, accessible, and immediately useful for technical tasks that dental technicians perform daily.

## Contents

This repository includes:

- **Calculators**
  - Material estimation tool
  - Alloy conversion calculator
  - Investment mixing ratio calculator
  
- **Time Savers**
  - Work order generator
  - Invoice template creator
  - Due date tracker
  
- **Reference Tools**
  - Color matching guide
  - Margin design reference
  - Material compatibility checker
  
- **Documentation**
  - Case documentation templates
  - Quality control checklists
  - Maintenance schedule templates

## Installation

Most tools are designed to be standalone and require minimal setup:

```bash
# Clone this repository
git clone https://github.com/username/dentallab-assistant.git

# Navigate to the repository directory
cd dentallab-assistant

# Run the desired script
python calculators/material_estimator.py
```

## Requirements

Basic requirements for most tools:
- Python 3.6+
- Basic CSV handling libraries
- Optional: Spreadsheet processing libraries

Specific requirements are listed in each tool's directory.

## Usage Examples

### Material Calculator
```python
# Example of using the material calculator
from tools.calculators import material_calculator

# Calculate zirconia needed for a 3-unit bridge
material_calculator.estimate_zirconia(units=3, type="anterior")
```

### Work Order Generator
```bash
# Generate a new work order
python tools/work_order_generator.py --patient "Smith, John" --doctor "Dr. Jones" --work-type "Crown" --material "Zirconia" --shade "A2"
```

## Contributing

Contributions are welcome from both dental professionals and developers! If you have a script or tool that saves you time in the lab, consider sharing it here.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-tool`)
3. Commit your changes (`git commit -m 'Add some amazing tool'`)
4. Push to the branch (`git push origin feature/amazing-tool`)
5. Open a Pull Request

## Created By

This repository is maintained by a dental technician with  20 years of experience in dental laboratory work and an enthusiasm for programming and process optimization.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to all dental technicians who provided feedback on these tools
- Special thanks to the dental labs that tested early versions
- Appreciation to open source contributors who help improve these tools

---

**Note:** These tools are provided as-is without warranty. Always verify calculations and results in critical dental laboratory work.

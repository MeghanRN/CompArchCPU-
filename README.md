[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/opKBEfYw)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-718a45dd9cf7e7f842a935f5ebbe5719a5e09af4491e668f4dbf3b35d5cca122.svg)](https://classroom.github.com/online_ide?assignment_repo_id=11114964&assignment_repo_type=AssignmentRepo)


# Verilog Project Template
#[Mr Chips Report](https://github.com/cooper-union-ece-251-marano/ece-251-spring-2023-final-project-mr-chips/blob/main/comparch_final_proj_report.pdf)

#[Mr Chips Greencard](https://github.com/cooper-union-ece-251-marano/ece-251-spring-2023-final-project-mr-chips/blob/main/mr_chips_greencard.pdf)


We chose to implement a MIPS architecture because we were most familiar with it from class. At first, we wanted to implement an 8-bit CPU with 8-bit instructions, but this design would not allow for enough instructions. When realizing this, we decided that we should use 16-bit instructions. Somewhere down this line, we decided that we may as well make the ALU operand size 16-bits as well. As the sages say, “good design demands good compromise.”


To compile then simulate:
```bash
make clean compile simulate
```

To disply simulation using GTKWAVE:
```bash
make display
```

Then choose "mr_chips_tb" as your SST. Highlight "uut" and choose all signals, dragging them to Signal area to right. Once done, got to menu Time -> Zoom -> Zoom Bet Fit.


To clean up:
```bash
make clean
```
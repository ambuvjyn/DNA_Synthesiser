# DNA Sequence Generator

This Shiny app generates a DNA sequence based on user-defined parameters such as sequence length, sequence name, and color-coding preference for nucleotides.

## Features

- Adjustable sequence length using a slider.
- Specify a custom name for the generated sequence.
- Option to enable or disable color-coding of nucleotides.
- Real-time generation of the DNA sequence.

## Instructions

1. Install the required packages by running the following commands in R:
   ```R
   install.packages(c("shiny", "markdown"))
   ```
2. Download or clone the repository to your local machine.

3. Open R or RStudio and set the working directory to the folder containing the app files.

4. Run the `app.R` file or copy the code and run it directly in the R console.

5. The app will launch in your default web browser.

6. Adjust the "Sequence Length" slider to set the desired length of the DNA sequence (between 10 and 100 nucleotides).

7. Enter a name for the sequence in the "Sequence Name" text input field.

8. Check the "Enable Color-Coding" checkbox to color-code the nucleotides or uncheck it to display the sequence in plain text.

9. Click the "Generate Sequence" button to generate the DNA sequence based on the provided parameters.

10. The generated DNA sequence will be displayed in the main panel of the app.

## Dependencies

The app has the following dependencies:

- `shiny`: for creating the Shiny application.

Make sure to install these packages before running the app.

## Author

Ambu Vijayan


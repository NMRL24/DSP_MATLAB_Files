# 🎧 Digital Signal Processing in Objective C

This repository contains various implementations of fundamental **Digital Signal Processing (DSP)** concepts using **Objective C** and **MATLAB**. The modules are categorized into filters, system properties, transforms, and time-frequency domain analysis. This is a comprehensive academic project.

---

## 👤 Author Info

**Name:** Naragam Manikanta Raghava  
**Roll No:** 23485A0424

---

## 📚 Table of Contents

- [📦 Filters](#-filters)
- [🔁 Properties of Systems](#-properties-of-systems)
- [🔢 Transforms & Frequency Domain](#-transforms--frequency-domain)
- [🔬 Miscellaneous](#-miscellaneous)
- [🧠 Open Ended](#-open-ended)
- [🚀 Getting Started](#-getting-started)
- [🛠 Requirements](#-requirements)
- [📬 Contributions](#-contributions)
- [📘 License](#-license)

---

## 📦 Filters

| File Name    | Description |
|--------------|-------------|
| `bbfltrs`    | Band-block or bandpass filters implementation. |
| `bfltrs`     | Basic low-pass, high-pass, or bandpass filters. |
| `cbfltrs`    | Complex or Combined Band filters. |
| `ciirfilts`  | Cascade IIR (Infinite Impulse Response) filters. |
| `fir_filters`| FIR (Finite Impulse Response) filters. Likely includes design, plotting, and response analysis. |

---

## 🔁 Properties of Systems

| File Name                | Description |
|--------------------------|-------------|
| `linearity_property`     | Tests a system's linearity using example inputs. |
| `periodicity_poperty`    | Verifies signal periodicity and computes fundamental periods. |
| `circonvolution_property`| Demonstrates the circular convolution property. |
| `LTIOP`                  | Linearity, Time Invariance, and Other DSP system properties demonstrated. |

---

## 🔢 Transforms & Frequency Domain

| File Name   | Description |
|-------------|-------------|
| `dft24`     | Computes the 24-point Discrete Fourier Transform (DFT). |
| `ditfft`    | Decimation-in-Time Fast Fourier Transform (FFT). |
| `spectrum`  | Plots the spectrum of a signal using FFT. |
| `ztransform`| Z-transform calculation and region of convergence (ROC) display. |

---

## 🔬 Miscellaneous

| File Name | Description |
|-----------|-------------|
| `sineee`  | 🎵 **Combined Sine Wave Analysis**  
Generates two sine waves (5 Hz and 25 Hz) using user-input amplitudes. Combines them and analyzes using FFT. Computes Power Spectral Density (PSD) for each and displays both **time domain** and **frequency domain** plots using MATLAB. Ideal for studying signal superposition and frequency composition. |

---

## 🧠 Open Ended

| File Name   | Description |
|-------------|-------------|
| `openended` | 📊 **Cross-Correlation Analysis**  
This MATLAB script takes two discrete-time sequences from the user and computes their **cross-correlation** using `xcorr()`. It then plots the input signal `x(n)`, impulse response `h(n)`, and the resulting output signal `y(n)` using subplots. Useful for understanding time-domain convolution and signal similarity. |

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/DSP_ObjectiveC_Files.git
   cd DSP_ObjectiveC_Files

$ErrorActionPreference = 'Stop'

$env:IDF_PATH = 'C:\esp\v6.0.1\esp-idf'
$env:IDF_TOOLS_PATH = 'C:\Espressif\tools'
$env:IDF_PYTHON_ENV_PATH = 'C:\Users\Pola\.espressif\python_env\idf6.0_py3.14_env'
$env:ESP_IDF_VERSION = '6.0.1'
$env:ESP_ROM_ELF_DIR = 'C:\Espressif\tools\esp-rom-elfs\20241011'

$toolPaths = @(
    "$env:IDF_PYTHON_ENV_PATH\Scripts",
    'C:\Espressif\tools\cmake\4.0.3\bin',
    'C:\Espressif\tools\ninja\1.12.1',
    'C:\Espressif\tools\openocd-esp32\v0.12.0-esp32-20260304\openocd-esp32\bin',
    'C:\Espressif\tools\riscv32-esp-elf\esp-15.2.0_20251204\riscv32-esp-elf\bin',
    'C:\Espressif\tools\xtensa-esp-elf\esp-15.2.0_20251204\xtensa-esp-elf\bin',
    'C:\Espressif\tools\idf-exe\1.0.3'
)

$env:PATH = (($toolPaths + $env:PATH) -join ';')
function global:idf.py {
    & "$env:IDF_PYTHON_ENV_PATH\Scripts\python.exe" "$env:IDF_PATH\tools\idf.py" @args
}

Write-Host "ESP-IDF $env:ESP_IDF_VERSION activated from $env:IDF_PATH"
Write-Host 'Use: idf.py set-target esp32, idf.py build, idf.py -p COMx flash monitor'

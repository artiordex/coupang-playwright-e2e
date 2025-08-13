# setup-structure.ps1
# Coupang Playwright E2E project folder structure setup

$root = "coupang-playwright-e2e"
New-Item -ItemType Directory -Force -Path $root | Out-Null
Set-Location $root

# Function to create directory and empty files
function Make-DirsAndFiles($dirs, $files) {
    foreach ($d in $dirs) {
        New-Item -ItemType Directory -Force -Path $d | Out-Null
    }
    foreach ($f in $files) {
        if (-not (Test-Path $f)) { New-Item -ItemType File -Force -Path $f | Out-Null }
    }
}

# .github/workflows
Make-DirsAndFiles @(".github\workflows") @(
    ".github\workflows\e2e-web.yml",
    ".github\workflows\e2e-mobile.yml",
    ".github\workflows\e2e-api.yml",
    ".github\workflows\nightly-regression.yml"
)

# .vscode
Make-DirsAndFiles @(".vscode") @(
    ".vscode\settings.json",
    ".vscode\extensions.json",
    ".vscode\launch.json"
)

# .husky
Make-DirsAndFiles @(".husky") @(
    ".husky\pre-commit",
    ".husky\commit-msg"
)

# .turbo
Make-DirsAndFiles @(".turbo") @(
    ".turbo\turbo.json"
)

# packages
$packages = "actions","components","config","constants","fixtures","formatters","initializers","locators","logger","notifications","types","utils"
foreach ($p in $packages) { New-Item -ItemType Directory -Force -Path "packages\$p" | Out-Null }

# e2e
$e2eDirs = "web-pc","web-mobile","android-app","ios-app","api","speedtest"
foreach ($p in $e2eDirs) { New-Item -ItemType Directory -Force -Path "e2e\$p" | Out-Null }

# emulator sandboxes
Make-DirsAndFiles @("e2e\emulator-sandboxes\android-emulator", "e2e\emulator-sandboxes\ios-emulator") @()

# configs
Make-DirsAndFiles @("configs\playwright") @(
    "configs\playwright\base.config.ts",
    "configs\playwright\web-pc.config.ts",
    "configs\playwright\web-mobile.config.ts",
    "configs\playwright\api.config.ts"
)
Make-DirsAndFiles @("configs\appium") @(
    "configs\appium\base.config.js",
    "configs\appium\android.config.js",
    "configs\appium\ios.config.js"
)
Make-DirsAndFiles @("configs\ci","configs\notifications") @()

# tools
Make-DirsAndFiles @("tools\scripts") @(
    "tools\scripts\bootstrap.ts",
    "tools\scripts\run-web.ts",
    "tools\scripts\run-mobile.ts",
    "tools\scripts\run-api.ts",
    "tools\scripts\collect-artifacts.ts"
)
Make-DirsAndFiles @("tools\docker\emulator\android", "tools\docker\emulator\ios") @(
    "tools\docker\docker-compose.yml",
    "tools\docker\playwright.Dockerfile",
    "tools\docker\appium.Dockerfile"
)

# assets
Make-DirsAndFiles @("assets\mobile","assets\data") @()

# reports
Make-DirsAndFiles @("reports\allure","reports\html","reports\traces") @()

# docs
Make-DirsAndFiles @("docs\guides","docs\architecture","docs\security","docs\images") @()

# Root files
$rootFiles = ".env.example","CODEOWNERS","package.json","pnpm-workspace.yaml","tsconfig.base.json","nx.json","turbo.json","playwright.config.ts","appium.config.js","README.md"
foreach ($f in $rootFiles) { if (-not (Test-Path $f)) { New-Item -ItemType File -Force -Path $f | Out-Null } }

Write-Host "Project structure created successfully in $root"

# Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
# .\setup-structure.ps1
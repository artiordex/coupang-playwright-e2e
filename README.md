# coupang-playwright-e2e — E2E Testing with Playwright, Appium & Nx

<img width="966" height="476" alt="image" src="https://github.com/user-attachments/assets/53818dc8-cae0-424f-b93c-f4592cc053c5" />


## ✍️ Author
- **Name**: Shiwoo Min
- **Role**: Full-Stack Developer · DevOps Engineer · Founder of Artiordex
- **Contact**: artiordex@gmail.com


## 📝 Overview
This repository contains a modular End-to-End (E2E) automation testing framework for Coupang, leveraging **Playwright** for web automation, **Appium** for mobile automation, and **Nx** for monorepo management.
The framework is designed for scalability, maintainability, and seamless integration into CI/CD pipelines using **GitHub Actions**.


## 🛠️ It supports
- Web UI tests (desktop & mobile browsers) with Playwright
- Native mobile app tests (iOS & Android) with Appium
- Shared utilities and configuration through Nx-managed packages
- CI/CD automation with environment-based test execution


## 🚀 Goals
1. Provide a unified testing solution for both web and mobile platforms
2. Maintain a scalable monorepo architecture with Nx
3. Enable modular, reusable test components
4. Integrate with GitHub Actions for automated test runs on pull requests, merges, and scheduled jobs
5. Support environment-based configuration for staging, QA, and production
6. Generate detailed reports and artifacts for every test run


## ⚙️ Environment
- **Languages**: TypeScript, JavaScript
- **Web Automation**: Playwright
- **Mobile Automation**: Appium
- **Monorepo Tooling**: Nx
- **CI/CD**: GitHub Actions
- **Node.js**: v20+
- **Browsers**: Chromium, Firefox, WebKit
- **Mobile Platforms**: iOS, Android (emulators & real devices)


## 🗓 2-Week Setup & Implementation Plan

#### Week 1 - Project Setup & Web E2E
1. Initialize Nx monorepo and base project structure
2. Configure Playwright for web automation
3. Implement environment-based configuration
4. Add sample Coupang web test cases
5. Integrate HTML and Allure reporting

#### Week 2 - Mobile E2E & CI/CD
6. Configure Appium for iOS and Android testing
7. Add shared utilities for selectors, actions, and assertions
8. Implement modular test suites for web and mobile
9. Set up GitHub Actions workflows for CI/CD
10. Add scheduled nightly test runs and artifact uploads


## 🗃 Folder Structure
```
coupang-playwright-e2e/
├─ .github/
│  └─ workflows/
│     ├─ e2e-web.yml
│     ├─ e2e-mobile.yml
│     ├─ e2e-api.yml
│     └─ nightly-regression.yml
│
├─ .vscode/                               # Editor settings
│  ├─ settings.json                       # formatOnSave, tab size, etc.
│  ├─ extensions.json                     # Recommended extensions
│  └─ launch.json                         # Debug configs
│
├─ .husky/                                # Git hooks
│  ├─ pre-commit                          # lint-staged, typecheck
│  └─ commit-msg                          # Conventional commits check
│
├─ .turbo/                                # Turborepo config
│  └─ turbo.json
│
├─ packages/                              # Shared libraries/modules
│  ├─ actions/                            # Cross-platform actions
│  ├─ components/                         # UI wrappers (header, modal, tabs)
│  ├─ config/                             # Env/device/notification loader
│  ├─ constants/                          # Constants
│  ├─ fixtures/                           # Fixtures & mock data
│  ├─ formatters/                         # Report & notification formatters
│  ├─ initializers/                       # Test environment setup
│  ├─ locators/                           # Locators, URLs, selectors
│  ├─ logger/                             # Logging & result handling
│  ├─ notifications/                      # Slack/Teams/Email alerts
│  ├─ types/                              # TypeScript type declarations
│  └─ utils/                              # Appium/browser/network/performance utils
│
├─ e2e/                                   # Test apps
│  ├─ web-pc/                             # PC web (Playwright)
│  ├─ web-mobile/                         # Mobile web (Playwright)
│  ├─ android-app/                        # Android app (Appium)
│  ├─ ios-app/                            # iOS app (Appium)
│  ├─ api/                                # API tests (REST/SOAP)
│  ├─ speedtest/                          # Speed/redirect measurement
│  └─ emulator-sandboxes/                 # Emulators for test runs
│     ├─ android-emulator/
│     └─ ios-emulator/
│
├─ configs/                               # Static configuration files
│  ├─ playwright/
│  │  ├─ base.config.ts
│  │  ├─ web-pc.config.ts
│  │  ├─ web-mobile.config.ts
│  │  └─ api.config.ts
│  ├─ appium/
│  │  ├─ base.config.js
│  │  ├─ android.config.js
│  │  └─ ios.config.js
│  ├─ ci/                                 # CI matrix, cache, paths
│  └─ notifications/                      # Channel/webhook mapping
│
├─ tools/
│  ├─ scripts/                            # Run via pnpm scripts
│  │  ├─ bootstrap.ts
│  │  ├─ run-web.ts
│  │  ├─ run-mobile.ts
│  │  ├─ run-api.ts
│  │  └─ collect-artifacts.ts
│  └─ docker/                             # Dockerized test env
│     ├─ docker-compose.yml
│     ├─ playwright.Dockerfile
│     ├─ appium.Dockerfile
│     └─ emulator/
│        ├─ android/
│        └─ ios/
│
├─ assets/                                # Test assets (use LFS for large files)
│  ├─ mobile/                             # *.apk / *.ipa
│  └─ data/                               # CSV/JSON/image mock data
│
├─ reports/                               # Collected artifacts
│  ├─ allure/
│  ├─ html/
│  └─ traces/
│
├─ docs/
│  ├─ guides/
│  ├─ architecture/
│  ├─ security/
│  └─ images/
│
├─ .env.example
├─ CODEOWNERS
├─ package.json
├─ pnpm-workspace.yaml
├─ tsconfig.base.json
├─ nx.json
├─ turbo.json
├─ playwright.config.ts
├─ appium.config.js
└─ README.md
```


## ⏳ Project Duration & Updates
- Date: 2025-08-11 → 2025-08-22
- Updates
```
2025-08-11 - Initial project setup (Nx, Playwright, Appium, TypeScript)
2025-08-12 - Added base Playwright web test suite
2025-08-13 - Implemented Appium mobile test structure
2025-08-15 - Integrated shared config and utilities
2025-08-18 - Added GitHub Actions CI/CD pipelines
2025-08-20 - Dockerized test environments for local & CI runs
```

## 📝 Daily Learning Log
```
Template
2025-08-__ (Day __)
- Topics: (Chapter/Subject)
- Practice: (File/Folder path)
- Notes:
- References: (Book/Course/Link)
```

## 📚 References

### 📖 Official Documentation
- [Playwright](https://playwright.dev/docs/intro)
- [Playwright API Testing](https://playwright.dev/docs/api-testing)
- [Node.js](https://nodejs.org/)
- [TypeScript](https://www.typescriptlang.org/)
- [Python](https://www.python.org/)
- [Selenium](https://www.selenium.dev/)
- [Appium](https://appium.io/)
- [Postman](https://www.postman.com/)
- [Newman](https://github.com/postmanlabs/newman)
- [Pytest](https://docs.pytest.org/en/stable/)
- [Swagger (OpenAPI)](https://swagger.io/)
- [Docker](https://docs.docker.com/)
- [Kubernetes](https://kubernetes.io/)
- [CI/CD Overview](https://www.redhat.com/en/topics/devops/what-is-ci-cd)

### 🗂 GitHub & Repositories
- [Playwright GitHub](https://github.com/microsoft/playwright?tab=readme-ov-file)
- [TypeScript GitHub](https://github.com/microsoft/TypeScript)
- [Opencv4nodejs GitHub](https://github.com/justadudewhohacks/opencv4nodejs)

### 🎓 Guides & Tutorials
- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html)
- [Playwright Guide](https://playwright.dev/docs/intro)
- [Selenium Guide](https://www.selenium.dev/documentation/)
- [Appium Guide](https://appium.io/docs/en/latest/)
- [OpenCV JavaScript Guide](https://docs.opencv.org/4.x/dc/de6/tutorial_js_nodejs.html)
- [Docker Hub](https://hub.docker.com/)
- [Cypress Docs](https://docs.cypress.io/)
- [Puppeteer Docs](https://pptr.dev/)
- [TestCafe Docs](https://testcafe.io/documentation/)
- [WebdriverIO Docs](https://webdriver.io/docs/gettingstarted)
- [Jenkins Docs](https://www.jenkins.io/doc/)
- [GitHub Actions Docs](https://docs.github.com/en/actions)
- [GitLab CI/CD Docs](https://docs.gitlab.com/ee/ci/)
- [JMeter Docs](https://jmeter.apache.org/usermanual/index.html)
- [k6 Docs](https://k6.io/docs/)
- [Testim](https://www.testim.io/)
- [Applitools](https://applitools.com/tutorials/)
- [Mockaroo](https://www.mockaroo.com/)
- [Faker.js](https://github.com/faker-js/faker)
- [Playwright Page Object Model (POM)](https://playwright.dev/docs/pom)
- [POM in Playwright](https://www.lambdatest.com/blog/page-object-model-playwright/)
- [Playwright Trace Viewer](https://playwright.dev/docs/trace-viewer)
- [Testcontainers](https://testcontainers.com/)

### 🏛 Architecture & Best Practices
- [Monolith vs Microservices](https://martinfowler.com/articles/microservices.html)
- [Multi-module Architecture](https://docs.gradle.org/current/userguide/multi_project_builds.html)
- [SOLID Principles](https://khalilstemmler.com/articles/solid-principles/)
- [Design Patterns in TypeScript](https://refactoring.guru/design-patterns/typescript)
- [TypeScript Classes & Interfaces](https://www.typescriptlang.org/docs/handbook/2/classes.html)
- [TypeScript Inheritance](https://www.typescriptlang.org/docs/handbook/classes.html#inheritance)
- [TypeScript Polymorphism](https://www.typescriptlang.org/docs/handbook/2/objects.html)
- [Dockerized Playwright Tests](https://playwright.dev/docs/ci#docker)
- [Playwright CI/CD Integration](https://playwright.dev/docs/ci)

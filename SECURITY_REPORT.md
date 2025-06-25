# 🔒 Trivy Security Report

This project uses [Trivy](https://github.com/aquasecurity/trivy) to scan the Docker image `insecure-flask-app` for vulnerabilities.

---

## 📁 JSON Report

Full JSON vulnerability report is saved in [trivy-report.json](./trivy-report.json) - https://github.com/z4ng1ew/Trivy-Flask-App-With-Bandit/blob/master/trivy-report.json. 

To re-generate:

```bash
trivy image --format json -o trivy-report.json insecure-flask-app

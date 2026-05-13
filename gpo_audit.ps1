# S14 Provisioning: GPO Audit Artifact Seeding
$TargetDir = "C:\Users\Administrator\Desktop"
$ArtifactPath = "$TargetDir\gpo_audit.txt"

Write-Host "[*] Initializing Session 14 Environment..." -ForegroundColor Cyan

$Template = @"
==================================================
SESSION 14: GROUP POLICY AUDIT REPORT
==================================================

QUESTION 1: What specific command do you run on a client machine to force it to download the latest Group Policy from the Domain Controller?
ANSWER: [Type your answer here]

gpupdate /force

QUESTION 2: Explain the LSDOU acronym. If a Local Policy says "Enable USB" but the Domain Policy says "Disable USB", which one wins and why?
ANSWER: [Type your answer here]

The LSDOU Acronym is the order of which certain commands are followed within active directory , in the order of LSDOU which rule is given last is the one that stands
so in terms of the answer to the question the Domain Policy would stand as it comes later in the Group Policy processing order.

QUESTION 3: Why is it best practice to apply GPOs to Organizational Units (OUs) rather than the entire Domain?
ANSWER: [Type your answer here]

Applying GPOs to OUs rather than the entire domain provides precision and safety. It allows you to tailor specific settings for different departments—like blocking the Control Panel for interns but not for IT admins—without affecting everyone. It also limits the "blast radius" of mistakes; if a policy is broken, it only impacts a specific group rather than crashing the entire company.

Set-Content -Path $ArtifactPath -Value $Template
Write-Host "[+] PROVISIONING COMPLETE. Artifact template seeded at: $ArtifactPath" -ForegroundColor Green

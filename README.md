# Git Learning Repository 🚀

This repository contains my Git and GitHub practice files and commands.

## 📚 Topics Covered

- Git Installation
- Git Repository Initialization
- Git Status
- Git Add
- Git Commit
- Git Branching
- Git Merge
- Git Remote Repository
- Git Push & Pull
- Git Clone
- Git Workflow

# Local to Remote Flow


- (git init)- Current folder ko Git repository banata hai. Isse hidden .git folder create hota hai jisme Git history store hoti hai.


- (git status) - Batata hai ki folder me kya changes hain, kaunsi files tracked/untracked hain, kaunsi branch par ho.


- (git remote add origin (repo link)-Local Git repo ko GitHub remote repository ke saath connect karta hai.

- (git remote -v )-Check karta hai ki remote URL sahi add hua hai ya nahi.

- (git add .) -Files ko staging area me bhejta hai. Matlab Git ko bolta hai ki in files ka snapshot lena hai.

- (git status)-Add karne ke baad verify karta hai ki files staging me aa gayi hain ya nahi.

- (git commit -m "Add terraform code")-Staging wali files ka snapshot local repository me save karta hai.

- (git branch -M main) -Current branch ka naam main kar deta hai.

- (git pull origin main --allow-unrelated-histories)-GitHub (remote) se latest code lekar local ke saath merge karta hai. Ye tab use hota hai jab local aur remote ki history alag ho.

- (git push -u origin main)-Local main branch ka code GitHub ke main branch par upload karta hai. -u future me tracking set karta hai.


## 🔄 Git Basic Workflow

Working Directory
|
| git add
↓
Staging Area
|
| git commit
↓
Local Repository
|
| git push
↓
Remote Repository (GitHub)


## 🛠️ Common Git Commands

### Initialize Repository

```bash
git init
Check Status
git status
Add Files
git add .
Commit Changes
git commit -m "commit message"
Create Branch
git checkout -b feature-name
Push Code
git push -u origin branch-name
Pull Code
git pull
Clone Repository
git clone <repository-url>
🌱 Branch Strategy
main
 |
 |---- feature-branch
 |
 |---- bug-fix-branch
🎯 Purpose

The purpose of this repository is to practice Git commands,
branching strategies, and GitHub workflow used in real-world DevOps projects.

👨‍💻 Author

Dilip Routray
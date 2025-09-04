# Keeping Your Fork of Kickstart.nvim Up-to-Date

This guide explains how to pull the latest changes from the official [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) repository while keeping your custom configuration intact.

---

## Setup Remotes

Make sure your local repository knows about the official repo (`upstream`) and your fork (`origin`):

```bash
# Check current remotes
git remote -v
```

Expected output:

```
origin    git@github.com:YOURNAME/kickstart.nvim.git (fetch)
origin    git@github.com:YOURNAME/kickstart.nvim.git (push)
upstream  https://github.com/nvim-lua/kickstart.nvim.git (fetch)
upstream  https://github.com/nvim-lua/kickstart.nvim.git (push)
```

If `upstream` is missing:

```bash
git remote add upstream https://github.com/nvim-lua/kickstart.nvim.git
```

---

## Keep Master Clean

Your `master` branch should track the official repo and remain vanilla. To reset `master` to match upstream:

```bash
git checkout master
git fetch upstream
git reset --hard upstream/master
git push -f origin master
```

> ⚠️ `reset --hard` discards any local changes on `master`. Make sure your custom commits are on a separate branch.

---

## Custom Branch for Your Changes

All custom configurations, plugins, and modifications should be in a separate branch (e.g., `custom`):

```bash
git checkout -b custom
```

- Make all edits here.
- Push your custom branch:

```bash
git push -u origin custom
```

---

## Pulling Latest Updates from Upstream

Whenever the official kickstart.nvim repo is updated:

```bash
# Fetch latest upstream commits
git fetch upstream

# Switch to your custom branch
git checkout custom

# Merge upstream/master into your custom branch
git merge upstream/master
```

- Resolve any conflicts if Git prompts you.  
- Commit and push your updated custom branch:

```bash
git push origin custom
```

> Optionally, use `git rebase upstream/master` instead of `merge` for a cleaner commit history.

---

## Summary Workflow

1. Keep `master` synced:

```bash
git checkout master
git fetch upstream
git reset --hard upstream/master
git push -f origin master
```

2. Work on your `custom` branch.  
3. Pull upstream updates into `custom` as needed:

```bash
git fetch upstream
git checkout custom
git merge upstream/master
git push origin custom
```

This setup ensures:

- `master` always mirrors official kickstart.nvim.  
- Your `custom` branch remains intact and can safely merge upstream updates.


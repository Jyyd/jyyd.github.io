# Refresh the homepage language card

From the `homepage-publish` project directory, run:

```powershell
.\scripts\update-github-languages.ps1
```

The script reads public, non-fork repositories owned by `Jyyd` and writes `_data/github_languages.json`. Push that updated JSON to publish the refreshed values. This is a dated snapshot, not a scheduled background task.

The main distribution uses GitHub language-byte counts for source files, including markup, with `Jupyter Notebook` files excluded. The expandable distribution includes notebooks. These figures describe public repository file sizes, not language proficiency or time spent programming. Private repositories are not accessed.

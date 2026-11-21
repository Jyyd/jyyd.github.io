# 网站图片使用说明

当前实际维护、提交和发布使用的本地项目目录：

`G:\Program\CODE\Homepage\homepage-publish`

此目录对应 GitHub 仓库 `Jyyd/jyyd.github.io`。其他本地副本不会自动同步。

## 新图片放在哪里

| 用途 | 本地目录（相对项目根目录） | 网页中填写的路径 |
| --- | --- | --- |
| 论文配图／图形摘要 | `assets/images/pubs/` | `/assets/images/pubs/文件名.png` |
| 会议报告／海报图片 | `assets/images/talks/` | `/assets/images/talks/文件名.jpg` |
| 多篇文章共用的装饰或概念示意图 | `assets/images/shared/` | `/assets/images/shared/文件名.svg` |
| 校徽 | `assets/images/institutions/` | `/assets/images/institutions/thu.png`、`/assets/images/institutions/cumtb.png` |
| 个人头像 | `images/profile.png` | 由 `_config.yml` 的 `author.avatar` 配置 |

原来的 `images/` 目录还包含网站图标、模板演示图片和旧链接兼容文件。新增论文和会议图片请使用上表中的专用目录。

## 给已有论文新增／替换图片

以扩散研究论文为例：

1. 将新图命名为 `2026-obstacle-dispersion.png`，放入 `assets/images/pubs/`。
2. 打开 `_publications/2026-obstacle-dispersion.md`。
3. 修改文件开头两个 `---` 之间的字段：

```yaml
thumb: "/assets/images/pubs/2026-obstacle-dispersion.png"
image_alt: "Overview of the atmospheric dispersion prediction framework"
```

`thumb` 决定卡片使用哪一张图片；`image_alt` 是图片的简短描述。不要填写电脑盘符路径，也不要填写 GitHub 的 `tree/master` 页面地址。

首页与 Publications 页面共用同一份论文记录，因此只需修改一次。当前首页精选记录另有 `featured: true`，它决定首页是否展示该论文；配图更新无需修改这个字段。

## 给会议／海报新增图片

- 会议论文卡片：修改对应的 `_publications/2025-apss.md` 或 `_publications/2024-psam.md` 的 `thumb`。
- 海报卡片：修改 `_talks/poster2508.md` 的 `thumb`。
- 口头报告记录：修改 `_talks/psam17-oral.md` 的 `thumb`。

例如：

```yaml
thumb: "/assets/images/talks/2025-apss-presentation.jpg"
image_alt: "Presentation at APSS 2025"
```

## 现有图片对应表

| 图片 | 用途／状态 |
| --- | --- |
| `pubs/natcom-2025.png` | Nature Communications 论文的原有研究框架图 |
| `pubs/bae-2026.png` | Building and Environment 论文的真实网络结构图 |
| `pubs/2023-jssr.jpg` | 粮食储存监管论文的原有研究框架图；沿用原文件名 |
| `talks/2025-urban-science-poster.jpg` | 2025 城市科学会议海报 |
| `talks/2024-psam-presentation.jpg` | 2024 PSAM 会议报告图片 |
| `shared/dispersion-concept.svg` | 旧版概念插图，已不用于论文卡片 |
| `shared/research-concept.svg` | 旧版装饰插图，已不用于论文卡片 |
| `shared/image-placeholder.svg` | 缺少真实配图时显示的统一占位图；新增真实图片后修改对应记录的 `thumb` 即可 |

如果只想给一篇论文换图，请上传该论文独有的新文件并修改它的 `thumb`。不要覆盖 `shared/` 中的共用图片，否则多篇论文会同时改变。

## 文件命名和尺寸

- 推荐用英文小写、年份和连字符，例如 `2026-obstacle-dispersion.png`。
- PNG 适合清晰的科研图；JPG／WebP 适合照片。
- 卡片会完整显示图片，不会强行裁剪；横图约 3:2 最适合当前布局。
- 推荐宽度 1000–1600 像素，尽量控制在 1 MB 以内，文字不要太密集。

把图片放入文件夹只是本地修改。还需要将图片与对应 Markdown 记录一起提交并推送到 GitHub，GitHub Pages 部署成功后才会在线显示。

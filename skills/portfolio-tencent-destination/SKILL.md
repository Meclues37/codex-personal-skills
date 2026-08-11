---
name: portfolio-tencent-destination
description: Add or update destination pages for Yisen's photography portfolio using Tencent COS image delivery. Use when the user asks to add a new travel destination, organize many photos into page sections, compress images, upload photos to Tencent Cloud COS, update bilingual English/Chinese portfolio copy, remove GitHub image fallback usage, or publish and verify the static GitHub Pages portfolio.
---

# Portfolio Tencent Destination

## Project Context

- Start by reading `D:\photography protfolio\PROJECT_MEMORY.md`.
- Work primarily in `D:\photography protfolio\site-repo-cos`.
- Live site: `https://meclues37.github.io/`.
- Tencent COS image base: `https://meclues37-photo-1447476321.cos.ap-hongkong.myqcloud.com/images/`.
- Keep live page image sources on Tencent COS unless the user explicitly asks otherwise.
- Keep local/GitHub image files as backup/source files when they already exist, but do not make displayed pages depend on GitHub image URLs or fallback scripts.

## Security Rules

- Never ask the user to paste Tencent `SecretId` or `SecretKey` into chat.
- Use a PowerShell upload script that prompts in the terminal, with `SecretKey` read as a secure string.
- Do not write credentials to files, project memory, git commits, or command history.
- After upload, remind the user to disable or delete the temporary key.

## Workflow

1. Inspect existing destination pages and CSS before editing:
   - Use pages such as `cruise.html`, `tibet.html`, `yunnan.html`, and `baltimore.html` as layout references.
   - Check `style.css`, `i18n.js`, `script.js`, and `publish_cos_urls.ps1`.
   - Run `git status -sb` and preserve unrelated changes.

2. Prepare images:
   - Use the user-provided file list only, unless they clearly ask to include nearby files.
   - Create optimized images under `site-repo-cos\images\<slug>\`.
   - Use descriptive ASCII filenames, for example `<slug>-hero.jpg`, `<slug>-panorama.jpg`, `<slug>-portrait-1.jpg`.
   - Compress for web with good visual quality:
     - Hero/major landscape: usually long edge 2200-3200 px, JPEG quality about 84-88.
     - Portraits or normal gallery images: usually long edge 1600-2200 px, JPEG quality about 82-86.
   - Keep especially strong landscape photos large in layout. Use one-column full-width display when the user says the photos are important.

3. Upload to Tencent COS:
   - Reuse `upload_with_cos_sdk.py`.
   - Create a destination-specific script when useful, following the pattern of `upload_pengy_to_cos.ps1`.
   - Upload to `images/<slug>`.
   - Verify representative image URLs with `curl -I` and require `HTTP/1.1 200 OK` before publishing pages that depend on them.

4. Build the destination page:
   - Add `<slug>.html` following the existing destination page structure.
   - Use Tencent COS absolute URLs for every displayed image.
   - Use `loading="lazy"` and `decoding="async"` for gallery images.
   - Add a hero that fits the image orientation and user preference.
   - Group photo-heavy pages into meaningful sections, such as landscapes, together/friends, portraits, details, or epilogue.
   - Let exceptional hero images appear again inside the page only when they are strong enough and the user wants the section to include them.

5. Update site integration:
   - Add a homepage destination card in `index.html`.
   - Add CSS only as narrowly as needed, usually by adding destination-specific classes rather than redesigning the site.
   - Add `<slug>.html` to `publish_cos_urls.ps1`.
   - Update the publish script commit message to match the task.

6. Add bilingual support:
   - Add English text directly in HTML.
   - Add Chinese translations to `i18n.js` for the homepage card, page title, hero text, section headings, and travel notes.
   - Add a `pageTravelNotes["<slug>.html"]` entry for full Chinese travel-note paragraphs.
   - Keep `i18n.js` ASCII-safe after editing by converting non-ASCII characters to Unicode escapes.
   - Run `node --check i18n.js` after translation edits.

7. Validate before publishing:
   - Check no live page references `githubusercontent`, raw GitHub image URLs, or image fallback scripts unless explicitly requested.
   - Run syntax checks for edited JavaScript.
   - Verify optimized image count and sizes.

8. Publish and verify:
   - Use the existing publishing script, usually `publish_cos_urls.ps1`, after COS image URLs are reachable.
   - Check GitHub Pages build status with `gh api`.
   - Check the live page with a cache-busting URL like `https://meclues37.github.io/<slug>.html?v=<commit>`.
   - Fetch live HTML and confirm Tencent COS image paths are present and GitHub fallback references are absent.

## Communication Style

- Explain the work simply and concretely.
- Mention whether Tencent upload, GitHub Pages build, and live URL checks succeeded.
- If upload credentials are needed, tell the user exactly which terminal prompt to fill, but keep secrets out of chat.

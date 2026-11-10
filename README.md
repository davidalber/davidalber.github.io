# Local Development
The site is built with Jekyll 4. The Ruby version is pinned in
`.ruby-version`, which is used both locally (via rbenv) and in CI.

1. Install that Ruby version: `rbenv install` (run from the repo root).
1. Run `bundle install`.
1. Do `rake preview` to run the site locally.

# Deployment
Pushing to `main` builds and deploys the site with GitHub Actions
(`.github/workflows/pages.yml`). Pull requests are built but not
deployed. The repository's Pages source must be set to "GitHub
Actions" (Settings → Pages → Build and deployment).

# Creating a Post
You can do the following to create an empty post.

```
$ rake init['post','PUT A TITLE HERE']
```

# Generating Tag Pages
If you create a new tag, run `make-tag-files.sh` and check in the files it generates.

# Adjusting Images
## Resizing

### Inline Images

The widest image width in a post is 756px. Images should be sized to
1512px or 1200px, at the smallest. Resizing can be done with
ImageMagick.

```
convert IMAGE.jpg -resize 1200x1200 IMAGE.resized.jpg
```

This probably needs to be changed for portrait orientation images.

### OG Images

The images that are used for post social cards are to be
1200x630. Unless the image already happens to be the correct aspect
ratio (1.91:1), it will need to be cropped. You may as well do the
resizing at the same time.

## Optimizing
### JPEG

```
jpegtran -copy none -progressive -optimize NAME.jpg > NAME.opt.jpg
```

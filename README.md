# Local Development
1. Install [Bundler](https://bundler.io/).
1. Run `bundle install`.
1. Do `rake preview` to run the site locally.

If you have created a new post, you may need to delete the _site
directory before doing `rake preview`.

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

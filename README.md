# Local Development
1. Install [Bundler](https://bundler.io/).
1. Run `bundle install`.
1. Do `rake preview` to run the site locally.

# Creating a Post
You can do the following to create an empty post.

```
$ rake init['post','PUT A TITLE HERE']
```

# Generating Tag Pages
If you create a new tag, run `make-tag-files.sh` and check in the files it generates.

# Optimizing Images
## JPEG

```
jpegtran -copy none -progressive -optimize NAME.jpg > NAME.opt.jpg
```

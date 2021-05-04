# Auto build and deploy GitHub Pages
Build a jekyll site and deploy to github pages, whilst keeping the building directory and site directory separate. 

*Motivation*: Allows for a continuous repo for the static sites, and allows for different jekyll environments/templates to be easily interchanged. 

## Local directories and Repos 
1. `dir_jekyll` - the root jekyll environment dir
2. `dir_static` - location for the static website to be displayed

## Prerequisites/Setup
1. Ensure `dir_jekyll` and `dir_static` both have working repos
2. Make sure the `dir_static` repo is set to be your [GitHub Pages](https://pages.github.com/)
3. [jekyll](https://jekyllrb.com/) environment ready to be built
4. Clone this repo!

## Usage
```
sh buildController.sh $dir_jekyll $dir_static
```

You will be asked for a commit message. This will be applied to both repositories. 
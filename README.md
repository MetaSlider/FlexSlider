[FlexSlider](http://www.woocommerce.com/flexslider/) fork used in MetaSlider

### Requirements

- node v19.2.0+

### Important!

Don't manually update the minified version, instead use laravel-mix for this process.

### Install laravel-mix

Install laravel-mix by running `npm install`

### Minify Javascript

With every change to jquery.flexslider.js, is required to update the minified version by running `npm run build`

### Optional: create a Docker image

The Docker container comes with the right Node version.
Inside the local repository, run in terminal: `./run.sh`
You may need to make it executable first: `chmod +x run.sh`
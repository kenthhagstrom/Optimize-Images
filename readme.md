# Optimize-Images
This script were never intended for the public, but here it is. It is a small shell script that I use to optimize images on my server. All optimization will occur recursively from the path you enter.

The script was mainly created because the fact that most major content management systems does not compress images to its maximum potential, leaving extra bytes to be loaded on page requests. If you're a photographer you might not want to use this script as it strips all exif data.

### Usage ###

```./optimize.sh /path/to/image/directory/```

##### Setup CRON #####
To run this script on a daily basis at 2am, enter cron with ```crontab -e``` then add the line below. Save and exit and it's running.

```0 2 * * * sh /path/to/optimize.sh /path/to/images/ >/dev/null 2>&1```

### Features and the future ###
I've planned to add PNG compression, most probably [optipng](http://optipng.sourceforge.net/) will be used. Also thought about creating an optional function for automatic backups, compressing the entire image directory with ```tar``` and store it elsewhere. Perhaps some kind of error handling could be useful too.

#### TODO ####
- [x] Lossless JPEG compression
- [ ] PNG compression
- [ ] Automatically backup original files before optimizing
- [ ] Error handling

### Notes ###
If you can't run the script, you might need to change file permissions with ```chmod +x optimize.sh``` to make it executable or you could call it with ```bash optimize.sh /path/to/images/```.

### Requirements ###
This script requires [jpegoptim](https://github.com/tjko/jpegoptim) installed on your server.

## Contribute ##
Anyone is welcome to contribute to this script. There are various ways you can contribute:

- Raise an [Issue](https://github.com/kenthhagstrom/Optimize-Images/issues/new)
- Send a Pull Request with your bug fixes and/or new features
- Provide feedback and suggestions

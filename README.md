# docker-gnucash
GnuCash running via X11 over SSH

I have a Synology NAS, which is great for many things. I also use Macs almost exclusively. Over the years, I've developed a love for GnuCash, open-source personal finance software (which I also use for business).

Since I use Macs, I've always had some interesting choices to make when it comes to using GnuCash on my local machine, and believe me, I think I've tried them all.

First of all, there's the amazing work of John Ralls (@jralls) in making GTK/GTK+ and GnuCash build and run natively on OS X using native UI APIs. This is, by far, the smoothest experience I've had, and it'd be my favored approach, except for the fact that I use GnuCash's mysql feature. This doesn't come standard in the OS X build, but there are ways to add it.

This leads to the other method I've used, MacPorts. This works very well, also, and allows you to easily build with mysql support, but the downside is the amount of setup required to get it working on a single host. Installing MacPorts, Xcode and all the dependencies can be time-consuming and utilizes a fair amount of disk space.

I got the idea to run GnuCash on my NAS when I realized that it would make it possible to use a single installed copy from anywhere, and when docker became available on the Synology DSM I started to realize how that might be possible.

Example:
```bash
git clone https://github.com/mhitchens/docker-gnucash.git
cd docker-gnucash
docker build . -t docker-gnucash
docker run docker-gnucash
ssh -X gnucash@localhost
```

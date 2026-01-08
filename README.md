# Kasey Davis Dentistry Website Download

Downloaded on: December 4, 2025
Location: `/Users/harris.reynolds/Dev/kd/kaseydavisdentistry-website`

## Download Summary

**Total Files:** 55
**Total Size:** 32 MB

## Directory Structure

```
kaseydavisdentistry-website/
├── www.kaseydavisdentistry.com/          (29 HTML pages)
├── b-cloud.becdn.net/                     (CSS & JavaScript files)
├── cloud-1de12d.b-cdn.net/                (Images and media)
├── cloud-1de12d.becdn.net/                (Favicon images)
└── fonts.bunny.net/                       (Web fonts CSS)
```

## What Was Downloaded

### HTML Pages (29 files)
- All main website pages including:
  - Home page (index.html)
  - About Us
  - Dental Services pages
  - Cosmetic Dentistry pages
  - Contact/Booking pages
  - And all other service pages

### CSS Files (4 files)
- Core styling: `builds/free/342-cloud/editor/css/group-1_2.min.css`
- Pro styling: `builds/pro/215-cloud/css/group-1_2-pro.min.css`
- Pro preview: `builds/pro/215-cloud/css/preview.pro.min.css`
- Web fonts: Custom font definitions

### JavaScript Files (2 files)
- Core functionality: `builds/free/342-cloud/editor/js/group-1_2.min.js`
- Pro functionality: `builds/pro/215-cloud/js/group-1_2.pro.min.js`
- Pro preview: `builds/pro/215-cloud/js/preview.pro.min.js`

### Images (15+ files)
- Logo images (various sizes)
- Background images
- Service photos
- Favicon images (multiple sizes)

## Important Notes for Migration

### Website Builder
This website was built using **Brizy Cloud** (a website builder platform). The HTML files contain references to external CDN resources.

### CDN Dependencies
The website relies heavily on external CDNs:
- `b-cloud.becdn.net` - CSS and JavaScript framework files
- `cloud-1de12d.becdn.net` - Image hosting
- `cloud-1de12d.b-cdn.net` - Additional image hosting
- `fonts.bunny.net` - Web fonts (Prata, Lato, Montserrat)

### Next Steps for Migration

1. **Upload to New Host**
   - Upload all files to your new web hosting provider
   - Maintain the directory structure

2. **Test the Website**
   - All downloaded pages should work as-is since we've preserved the CDN links
   - Test all pages to ensure images, fonts, and styling load correctly

3. **Optional: Host Assets Locally**
   - The downloaded CSS, JS, and images can be hosted on your server
   - You'll need to update the HTML file references to point to local files instead of CDN URLs
   - This ensures full control but requires modifying all HTML pages

4. **Update HTML Links** (if hosting locally)
   - Replace CDN URLs with relative paths
   - Update all references in the 29 HTML files

5. **Configure Your New Host**
   - Set up proper redirects (e.g., /home → /index.html)
   - Configure SSL certificate
   - Set up any contact forms or booking integrations

## Potential Issues to Watch For

1. **CDN Access**: If you stop paying your current vendor, the CDN links may stop working
2. **Contact Forms**: Forms may be tied to the Brizy platform and need reconfiguration
3. **Analytics**: Any tracking codes will need to be verified/updated
4. **Performance**: Consider implementing caching and CDN on your new host

## Recommendation

For the smoothest transition, I recommend:
1. Upload these files to your new host first
2. Test everything works
3. Update DNS to point to new host
4. Then, optionally work on hosting assets locally if the CDN links become an issue

---

Need help with the migration? Consider these next steps:
- Update HTML files to use local asset paths
- Set up hosting on your new provider
- Configure domain and SSL
- Test all functionality before switching DNS

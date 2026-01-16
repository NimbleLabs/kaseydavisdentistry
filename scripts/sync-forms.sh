#!/bin/bash
#
# Migrate Contact Forms
# This script replaces Lead Connector HQ iframes with Netlify forms
# and removes msgsndr scripts.
#
# Usage: ./scripts/sync-forms.sh
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
TEMPLATE_FILE="$PROJECT_DIR/_templates/contact-form.html"
PUBLIC_DIR="$PROJECT_DIR/public"

# Check template exists
if [ ! -f "$TEMPLATE_FILE" ]; then
    echo "Error: Template file not found at $TEMPLATE_FILE"
    exit 1
fi

# Read the form template (strip the HTML comment at the top)
FORM_HTML=$(sed '1,4d' "$TEMPLATE_FILE" | tr '\n' ' ' | sed 's/  */ /g')

echo "=== Contact Form Migration Script ==="
echo ""

# Count files with Lead Connector
LC_COUNT=$(grep -l "leadconnectorhq.com/widget/form/75QFWBwcXAWWeZTVR7Iw" "$PUBLIC_DIR"/*.html 2>/dev/null | wc -l | tr -d ' ')
echo "Found $LC_COUNT files with Lead Connector contact form iframe"
echo ""

# Replace Lead Connector iframe with Netlify form
for file in "$PUBLIC_DIR"/*.html; do
    if grep -q "leadconnectorhq.com/widget/form/75QFWBwcXAWWeZTVR7Iw" "$file"; then
        echo "Updating: $(basename "$file")"

        # The iframe pattern - replace entire iframe tag with form
        # Using perl for robust regex replacement
        perl -i -pe "s|<iframe[^>]*75QFWBwcXAWWeZTVR7Iw[^>]*></iframe>|$FORM_HTML|g" "$file"
        perl -i -pe "s|<iframe[^>]*75QFWBwcXAWWeZTVR7Iw[^>]*>|$FORM_HTML|g" "$file"
    fi
done

echo ""
echo "Removing msgsndr scripts..."

# Remove msgsndr from all files
for file in "$PUBLIC_DIR"/*.html; do
    if grep -q "msgsndr.com" "$file"; then
        echo "  - $(basename "$file")"
        sed -i '' 's|<script src="https://link\.msgsndr\.com/js/form_embed\.js"></script>||g' "$file"
    fi
done

echo ""
echo "=== Migration Complete ==="
echo ""
echo "Template file location: _templates/contact-form.html"
echo ""
echo "To update forms in the future:"
echo "1. Edit _templates/contact-form.html"
echo "2. Copy the form HTML to each page that needs it"
echo ""
echo "Next steps:"
echo "1. Test locally: cd public && python -m http.server 8000"
echo "2. Verify forms render correctly on all pages"
echo "3. Deploy to Netlify and test form submission"

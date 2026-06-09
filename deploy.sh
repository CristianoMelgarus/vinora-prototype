#!/bin/bash
# Vinora Prototype Deploy to Surge
# Usage: ./deploy.sh

set -e

DOMAIN="vinora-preview.surge.sh"
DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$DIR"

echo "🚀 Deploying Vinora prototype to $DOMAIN..."
npx surge . --domain "$DOMAIN"

echo ""
echo "✅ Live at: https://$DOMAIN/prototype.html"

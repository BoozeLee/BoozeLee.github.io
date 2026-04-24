#!/bin/bash
echo "# Laboratory Documentation" > _pages/docs.md
echo "" >> _pages/docs.md
echo "Generated documentation for current lab files." >> _pages/docs.md
echo "" >> _pages/docs.md
ls -R >> _pages/docs.md

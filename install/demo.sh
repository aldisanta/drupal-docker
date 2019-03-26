#!/bin/bash
cd /app
drupal generate:module --core=8.x --package=Demo --module=DemoTest --machine-name=demotest --module-path=modules/demotest \
--description="Module for Drupal 8 Demo Test" \
--module-file --composer --test --twigtemplate
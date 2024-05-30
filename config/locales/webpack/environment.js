const { environment } = require('@rails/webpacker');
const webpack = require('webpack');
const path = require('path');

// Add the following block to setup PostCSS with TailwindCSS
environment.loaders.append('sass', {
  test: /\.scss$/,
  use: [
    'style-loader',
    'css-loader',
    {
      loader: 'postcss-loader',
      options: {
        postcssOptions: {
          plugins: [
            require('postcss-import'),
            require('tailwindcss'),
            require('autoprefixer'),
          ],
        },
      },
    },
    'sass-loader',
  ],
});

module.exports = environment;

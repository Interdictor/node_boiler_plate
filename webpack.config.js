const webpack = require('webpack')
const path = require('path')

module.exports = {
  mode: 'production',
  resolve: {
    extensions: ['.js'],
  },
  entry: {
    'bundle': './src/main.js',
  },
  output: {
    path: path.resolve(__dirname, 'public/dist'),
    filename: '[name].js',
  }
}

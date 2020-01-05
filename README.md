# vue-sfc-test-with-jest

### desc

test vue app sfc with jest

note: you can also test your project with [Vue CLI 3](https://cli.vuejs.org/)

### Additional Dependencies

- `vue-test-utils`
- `jest`
- `babel-jest` (for ES2015+ features in tests)
- `vue-jest` (for handling `*.vue` files in tests)
- `jest-serializer-vue` (for snapshot tests)

### Additional Configuration

#### `jest.config.js`

get detail on [jest.config.js](./jest.config.js#L1-#L21)


#### `.babelrc`

Our default Babel config disables ES modules transpilation because webpack already knows how to handle ES modules. However, we do need to enable it for our tests because Jest tests are run directly in Node.

get detail on [.babelrc](./.babelrc#L1-#L4)

Also, if our tests are run in a relatively newer version of Node, most of the ES features are already supported - we can tell `babel-preset-env` to target the Node version we are using. This skips transpiling unnecessary features and makes our tests boot faster.

get detail on [.babelrc](./.babelrc#L8)

To apply these options only for tests, we need to add a separate config under `env.test` (this will be automatically picked up by `babel-jest`):

get detail on [.babelrc](./.babelrc#L6)



### Build Commands

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run buildu

# run tests
npm test
#npm test -- -u
```

For detailed explanation on how things work, consult the [docs for vue-test-utils](https://vue-test-utils.vuejs.org/guides/#testing-single-file-components-with-jest).


### author

yemiancheng <ymc-github@gmail.com>

### contributor

Evan You <yyx990803@gmail.com>


### License

MIT
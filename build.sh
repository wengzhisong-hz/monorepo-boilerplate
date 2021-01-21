echo '****************************'
echo '* 注意按照依赖引用顺序打包 *'
echo '****************************'

echo '清除dist...'
yarn clean

echo '打包中...'

echo '打包another-demo中...'
tsc --build ./packages/another-demo/lib/tsconfig.json
echo 'done'

echo '打包demo中...'
tsc --build ./packages/demo/lib/tsconfig.json
echo 'done'

echo '打包完毕'

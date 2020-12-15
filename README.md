# monorepo boilerplate

lerna + yarn + TS 

## 使用方法

### 安装依赖

使用 yarn: `yarn install` 安装依赖。

### 创建子项目
// todo 整合 lerna create 指令生成package 
1. 直接拷贝 `demo` package，并在其基础上进行修改  
2. 在 `tsconfig.json` 中添加TS references

### 依赖管理

```sh
# 1. 添加指令

# 将packageB作为packageA的依赖进行安装
yarn workspace packageA add packageB
# 将lodash作为packageA的依赖进行安装
yarn workspace packageA add lodash

# 给所有的package安装lodash依赖 (dependencies peerDependencies 需要安装到每个package中)
yarn workspaces add lodash

# 给所有的package安装typescript依赖 (全局devDependencies可以安装到root中)
yarn add -W -D typescript

# 2. 移除指令
yarn workspace packageA remove packageB
yarn workspace packageA remove lodash
yarn workspaces remove lodash
yarn remove -W -D typescript
```

### 包管理


#### 本地开发调试

1. 设置私库用户：

```sh
git config user.name # 查看用户名
git config user.email # 查看用户邮箱
npm adduser --registry http://localhost:9000 # 添加用户，输入上面的用户名和邮箱；密码简单一点，比如 123
```

2. 发包

确定lerna.json 的 registry 值为 `http://localhost:9000`

```sh
yarn start # 先打包 & 启动本地npm私库
lerna publish # 发包到本地私库
```

#### 发布到生产环境

将 `lerna.json` 的 `registry` 值修改为目标npm库，比如npm官方库 `https://registry.npmjs.org/` ，然后执行：

```sh
lerna publish
```

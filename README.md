# monorepo boilerplate

lerna + yarn + TS 

## 使用方法

### 安装依赖

使用 yarn: `yarn install` 安装依赖。

### 创建子项目

1. 直接拷贝`demo` package
2. 在`tsconfig.json`中添加TS references

### 依赖管理

```sh
# 1. 添加指令

# 将packageA作为packageB的依赖进行安装
yarn workspace packageB add packageA

# 给所有的package安装lodash依赖 (dependencies peerDependencies 需要安装到每个package中)
yarn workspaces add lodash

# 给所有的package安装typescript依赖 (全局devDependencies可以安装到root中)
yarn add -W -D typescript

# 2. 移除指令
yarn workspace packageB remove packageA
yarn workspaces remove lodash
yarn remove -W -D typescript
```

### 包管理

1. 在lerna.json中配置好npm库地址
2. 使用 `lerna publish` 发布版本

:: Script for building Monaco Editor on Windows.

echo === Install vscode === 
cd vscode
call yarn install
@echo on


echo === Build vscode === 
call npm run compile
@echo on


echo === Build editor distro === 
call npx gulp editor-distro --max_old_space_size=2000
@echo on

cd ..

echo === Install Monaco === 
cd monaco-editor
call npm install
@echo on

rm -rf node_modules\monaco-editor-core
md node_modules\monaco-editor-core
copy ..\vscode\out-monaco-editor-core node_modules\monaco-editor-core

echo === Build Monaco release package === 
call npm run release
@echo on


rm -rf ..\..\data-forge-notebook-dev\lib\monaco-editor
md ..\..\data-forge-notebook-dev\lib\monaco-editor
copy release ..\..\data-forge-notebook-dev\lib\monaco-editor

cd ..
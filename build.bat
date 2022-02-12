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
mv ..\vscode\out-monaco-editor-core node_modules\monaco-editor-core

echo === Build Monaco release package === 
call npm run release
@echo on

@REM rm -rf ..\..\..\data-forge-notebook-git\lib\monaco-editor
@REM mv release ..\..\..\data-forge-notebook-git\lib\monaco-editor

cd ..
@echo off

:: 1 - Verificar o volume da unidade
echo Verificando o volume da unidade C:
vol C:
echo.

:: 2 - Verificar a versão do sistema
echo Verificando a versão do sistema:
ver
echo.

:: 3 - Limpar a tela
cls

:: 4 - Listar todos os arquivos e pastas da unidade C:
echo Listando todos os arquivos e pastas na unidade C:
dir C:\
echo.

:: 5 - Criar 3 pastas na unidade C: com os nomes Huginho, Zezinho e Luizinho
echo Criando as pastas Huginho, Zezinho e Luizinho...
mkdir C:\Huginho
mkdir C:\Zezinho
mkdir C:\Luizinho
echo.

:: 6 - Verificar se as pastas foram criadas
echo Verificando se as pastas foram criadas:
if exist C:\Huginho (echo Pasta Huginho criada com sucesso) else (echo Erro ao criar a pasta Huginho)
if exist C:\Zezinho (echo Pasta Zezinho criada com sucesso) else (echo Erro ao criar a pasta Zezinho)
if exist C:\Luizinho (echo Pasta Luizinho criada com sucesso) else (echo Erro ao criar a pasta Luizinho)
echo.

:: 7 - Acessar cada pasta e criar subpastas Argentina, Brasil e Uruguai
echo Criando subpastas Argentina, Brasil e Uruguai em cada pasta...
for %%D in (Huginho Zezinho Luizinho) do (
    mkdir C:\%%D\Argentina
    mkdir C:\%%D\Brasil
    mkdir C:\%%D\Uruguai
    echo Subpastas criadas em C:\%%D
)
echo.

:: 7.1 - Verificar se as subpastas foram criadas
echo Verificando se as subpastas foram criadas:
for %%D in (Huginho Zezinho Luizinho) do (
    if exist C:\%%D\Argentina (echo Subpasta Argentina criada em C:\%%D) else (echo Erro ao criar subpasta Argentina em C:\%%D)
    if exist C:\%%D\Brasil (echo Subpasta Brasil criada em C:\%%D) else (echo Erro ao criar subpasta Brasil em C:\%%D)
    if exist C:\%%D\Uruguai (echo Subpasta Uruguai criada em C:\%%D) else (echo Erro ao criar subpasta Uruguai em C:\%%D)
)
echo.

:: 8 - Remover todas as pastas com o nome Argentina
echo Removendo todas as pastas com o nome Argentina...
for %%D in (Huginho Zezinho Luizinho) do (
    rmdir /S /Q C:\%%D\Argentina
)
echo Pastas Argentina removidas.
echo.

:: 9 - Criar um arquivo log.txt na unidade C:
echo Criando arquivo log.txt na unidade C:
echo Log de execução do script > C:\log.txt
echo Arquivo log.txt criado com sucesso.
echo.

:: 10 - Fazer uma cópia do log.txt para cada uma das pastas Huginho, Zezinho e Luizinho
echo Copiando log.txt para as pastas Huginho, Zezinho e Luizinho...
for %%D in (Huginho Zezinho Luizinho) do (
    copy C:\log.txt C:\%%D\
)
echo Copia realizada com sucesso.
echo.

echo Script concluído com sucesso.
pause

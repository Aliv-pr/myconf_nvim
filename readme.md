# Introdución 
Mi configuración básica de neovim.
El objetivo es hacer una configuración que me permita programar en python, java, javascript, C, C++, Ruby y otras. Además de escribir archivos en latex y markdown

## The init.lua file
[06mar2026]: Primera configuración básica

## Lazy.nvim
[06mar2026]: Instalación de lazy para instalar plugins

## Colorscheme
[06mar2026]: Instalación de https://github.com/catppuccin para colorear 
Y seleccione el tema catppuccin-mocha

## Telescope
[07mar2026]: Instalación de https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file "telescope" es un buscador difuso con  
leader + ff = Busca archivos 
leader + fg = Busca una palabra en los archivos del proyecto

## Treesitte
[12mar2026]: Instalación de https://github.com/nvim-treesitter/nvim-treesitter "tresitter" 
Sirve para resaltar y sangrar 

## neo-tree
[12mar2026]: Instalación de https://github.com/nvim-neo-tree/neo-tree.nvim "neo-tree" que es un arbol de explorador de archivos
y uso <leader>n para abrir y cerrar

## Modularización
[13mar2026]: usando la estructura de carpetas que permite lazy modularizamos los plugins en la carpeta lua/plugins y las opciones en el de vim-options

## lualine
[14mar2026]: Instale el plugin de lualine para que la barra de abajo se vea bien.

## lspconfig
[15mar2026]:
### Plugins utilizados
mason.nvim – Gestor de instalación de servidores LSP.

mason-lspconfig.nvim – Puente para instalar servidores automáticamente y vincularlos con lspconfig.

nvim-lspconfig – Configuración nativa de LSP para Neovim.

### Servidores instalados automáticamente
lua_ls (Lua)

ts_ls (TypeScript/JavaScript)

Atajos de teclado (se activan al adjuntarse un LSP)
K – Muestra documentación (hover).

gd – Ir a definición.

<leader>ca – Acciones de código (modo normal/visual).

## Telescope-ui-select.nvim
[15mar2026]: Instale telescope-ui-select.nvim https://github.com/nvim-telescope/telescope-ui-select.nvim
Sirve para que las ventanas de lsp y otros se vean mejor.

## none-ls.lua
[16mar2026]: Instalación de none-ls.lua https://github.com/nvimtools/none-ls.nvim
Sirve para autocompletado, corrección de errores y estilo de formato. Para que funcione necesitamos instalar los analizadores usando

> Usamos :Mason y luego buscamos /stylua
y luego usamos i para instalarlo

Usamos 
leader + gf = da formato al codigo

## autocompletado y snippet's
[17mar2026]: Sistema de autocompletado moderno basado en LSP y snippets.

### Plugins utilizados
- nvim-cmp → Motor de autocompletado  
- cmp-nvim-lsp → Conecta LSP con autocompletado  
- LuaSnip → Motor de snippets  
- cmp_luasnip → Integra snippets en el autocompletado  
- friendly-snippets → Colección de snippets  

### Atajos (autocompletado)

- `<C-n>` → Siguiente sugerencia  
- `<C-p>` → Sugerencia anterior  

- `<C-b>` → Subir en la documentación  
- `<C-f>` → Bajar en la documentación  

- `<C-Space>` → Abrir autocompletado  
- `<C-e>` → Cancelar autocompletado  

- `<CR>` → Confirmar selección  

- `<Tab>` → 
  - Navega sugerencias si el menú está abierto  
  - Expande snippet o avanza dentro de él  
  - Inserta tab normal si no hay contexto  

- `<S-Tab>` → 
  - Navega hacia atrás en sugerencias  
  - Retrocede en snippets

## Debuggin
[17mar2026]: Usamos varios plugins para construir el depurador 

> Cada lenguaje requiere su propio adapter (no existe una configuración universal).

### Plugins utilizados
- nvim-dap → Cliente DAP (motor del debugging)  
- nvim-dap-ui → Interfaz gráfica  
- nvim-nio → Dependencia de dap-ui  
- nvim-dap-go → Soporte automático para Go  

### Go

Usamos Delve como debugger y adapter DAP.

#### Instalación (Fedora)
```bash
sudo dnf install delve
```

### Go
Usamos Delve como debugger y adapter DAP.

<leader>dt → Toggle breakpoint

<leader>dc → Continuar

<leader>di → Step into

<leader>do → Step over

<leader>dO → Step out

<leader>dr → REPL

<leader>dl → Última ejecución

Uso

Colocar breakpoint

Ejecutar (<leader>dc)

Navegar con steps



# Guia de Componentes do Scene Graph no Roku

O **Scene Graph** é a base do desenvolvimento de aplicativos no Roku, permitindo criar interfaces gráficas dinâmicas e interativas. Ele é baseado em **XML** para a estrutura da interface e **BrightScript** para a lógica.

## 🔹 Componentes do Scene Graph no Roku

Os componentes do Scene Graph são representados por **nós (nodes)**, que são organizados em uma árvore hierárquica. Cada nó pode conter filhos e propriedades para definir o comportamento e aparência.

### 1️⃣ Node
O `Node` é a classe base para todos os outros componentes no Scene Graph. Ele fornece propriedades e métodos que podem ser herdados por outros tipos de nós.

```xml
<component name="MeuComponente" extends="Node">
    <interface>
        <field id="mensagem" type="string" />
    </interface>
</component>
```

---

### 2️⃣ Group
O `Group` é um contêiner que pode conter outros nós. Ele é usado para organizar elementos na tela.

```xml
<component name="MeuGrupo" extends="Group">
    <children>
        <Rectangle width="200" height="100" color="0xFF0000FF" />
    </children>
</component>
```

---

### 3️⃣ Rectangle
O `Rectangle` desenha formas retangulares na tela.

```xml
<Rectangle width="300" height="200" color="0xFFFF0000" />
```

---

### 4️⃣ Label
O `Label` exibe textos na tela.

```xml
<Label text="Olá, Roku!" color="0xFFFFFFFF" font="font:MediumBoldSystemFont" />
```

---

### 5️⃣ Poster
O `Poster` é usado para exibir imagens.

```xml
<Poster uri="pkg:/images/meu_logo.png" width="200" height="100" />
```

---

### 6️⃣ Video
O `Video` é usado para reproduzir vídeos.

```xml
<Video id="videoPlayer" width="1280" height="720" />
```

A lógica para carregar e reproduzir vídeos é feita em **BrightScript**.

---

### 7️⃣ Button
O `Button` é um botão interativo.

```xml
<Button id="meuBotao" text="Clique aqui" />
```

---

### 8️⃣ ListView
O `ListView` cria listas roláveis.

```xml
<ListView id="minhaLista" />
```

---

## 🛠️ Dicas para desenvolvimento
1. **Use o Scene Graph Inspector** – O Roku possui uma ferramenta para inspecionar e depurar os nós da interface.
2. **Separe lógica e interface** – Use arquivos `.brs` para a lógica e `.xml` para a UI.
3. **Teste no Roku Emulator** – O `Roku Device Simulator` ajuda a visualizar o app sem um dispositivo físico.

---

Se precisar de mais exemplos ou quiser ajuda para criar um app básico com Scene Graph, me avise! 🚀
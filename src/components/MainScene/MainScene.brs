sub init()
    m.categoryList = m.top.findNode("categoryList")
    m.channelList = m.top.findNode("channelGrid")
    m.channelList.observeField("itemSelected", "onChannelSelected")
    m.categoryList.observeField("itemSelected", "onCategorySelected")

    loadMockCategories() ' Carrega categorias Mock Inicial
    loadMockChannels() ' Carrega canais Mock Incial
    m.top.setFocus(true)

    m.categoryList.setFocus(true)

end sub


sub onCategorySelected()
    index = m.categoryList.itemSelected
    title = m.categoryList.content.getChild(index).title
    ? "Category selected: " + title
    ' AQui pode futuramente filtrar canais por categoria
    'loadMockChannels()
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean

    if key = "right" then
        if m.categoryList.hasFocus() then
            print "→ da categoryList → foco no canal"
            m.categoryList.setFocus(false)
            m.channelList.setFocus(true)
           
            return true 
        end if  

    else if key = "left" then
        if m.channelList.hasFocus() then
            
            index = m.channelList.itemSelected
            numColumns = m.channelList.numColumns
            
            if m.channelList.index = -1 then
                m.channelList.setIndex(0)
            end if


            ' Verifica se está na primeira coluna (coluna 0)
            col = index MOD numColumns
            print "← no canal. Index: " + index.toStr() + " | Coluna: " + col.toStr()

            if col = 0 then
                m.categoryList.setFocus(true)
                return true
            end if
        end if
    end if
    
    return false
end function



sub onChannelSelected()
    index = m.channelList.itemSelected
    channel = m.channelList.content.getChild(index)
    print "Canal selecionado: " + channel.title
    ' Aqui você pode fazer o que quiser: abrir player, mudar layout etc
end sub 


sub loadMockCategories()

    categories = [
        { title: "Movies" },
        { title: "TV Shows" },
        { title: "Documentaries"},
        { title: "Kids"}
    ]

     ' Carrega categorias Mock
    categoryNode = createObject("roSGNode", "ContentNode")

    ' Aiciona categorias Mock criando childrens
    for each item in categories
        node = categoryNode.createChild("ContentNode")
        node.title = item.title
        print "Category: " + item.title
    end for
    
    ' Adiciona categorias na lista
    m.categoryList.content = categoryNode

end sub     



sub loadMockChannels()
    channels = [
        { title: "Canal 1", hdPosterUrl: "https://painel-tv.brsuper.com.br/img/light/TotalPlay.png?pfdrid_c=true" },
        { title: "Canal 2", hdPosterUrl: "https://painel-tv.brsuper.com.br/img/light/TotalPlay.png?pfdrid_c=true" },
        { title: "Canal 3", hdPosterUrl: "https://painel-tv.brsuper.com.br/img/light/TotalPlay.png?pfdrid_c=true" },
        { title: "Canal 4", hdPosterUrl: "https://painel-tv.brsuper.com.br/img/light/TotalPlay.png?pfdrid_c=true" },
        { title: "Canal 5", hdPosterUrl: "https://painel-tv.brsuper.com.br/img/light/TotalPlay.png?pfdrid_c=true" },
        { title: "Canal 6", hdPosterUrl: "https://painel-tv.brsuper.com.br/img/light/TotalPlay.png?pfdrid_c=true" },
        { title: "Canal 7", hdPosterUrl: "https://painel-tv.brsuper.com.br/img/light/TotalPlay.png?pfdrid_c=true" },
        { title: "Canal 8", hdPosterUrl: "https://painel-tv.brsuper.com.br/img/light/TotalPlay.png?pfdrid_c=true" },
        { title: "Canal 9", hdPosterUrl: "https://painel-tv.brsuper.com.br/img/light/TotalPlay.png?pfdrid_c=true" }
    ]
    
    ' Cria Channel List
    channelsNode = createObject("roSGNode", "ContentNode")

    ' Adiciona canais criando chilldens 
    for each ch in channels
        node = channelsNode.createChild("ContentNode")
        node.title = ch.title
        node.hdPosterUrl = ch.hdPosterUrl
    end for
    
    ' Adiciona canais na lista
    m.channelList.content = channelsNode


end sub

















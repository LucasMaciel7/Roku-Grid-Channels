sub init()
    m.channelList = m.top.findNode("ChannelList")
    m.channelList.observeField("itemSelected", "onChannelSelected")
    loadMockChannels() ' Carrega canais Mock Incial
    m.channelList.setFocus(true)
end sub

sub onChannelSelected()
    index = m.channelList.itemSelected
    channel = m.channelList.content.getChild(index)
    print "Canal selecionado: " + channel.title
    ' Aqui você pode fazer o que quiser: abrir player, mudar layout etc
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

















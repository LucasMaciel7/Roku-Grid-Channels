function featchChannelList(apiUrl as string) as object
    print "Buscando canais...[Function featchChannelList]"
    request = createObject("roUrlTransfer")
    port = CreateObject("roMessagePort")
    request.SetMessagePort(port)
    request.SetUrl(apiUrl)


    request.AsyncGetToFile()

    while true
        msg = wait(0, port)
        if type(msg) = "roUrlEvent"
            if msg.GetResponseCode() = 200
                print "Canais recebidos com sucesso!"
                return ParseJson(msg.getString())
            else
                print "Erro ao buscar canais: " + msg.GetResponseCode()
                return invalid
                
            end if
        end if
    end while

end function



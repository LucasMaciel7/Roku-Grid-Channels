sub init()
    m.bg = m.top.FindNode("bg")
    m.thumb = m.top.FindNode("thumb")
    m.title = m.top.FindNode("title")
end sub

sub showContent() as void
    content = m.top.itemContent
    print "setContent sendo renderizado: " + content.title
    m.thumb.uri = content.hdPosterUrl
    m.title.text = content.title
end sub

sub onFocusChange()
    focusVal = m.top.focusPercent
    if focusVal > 0
      m.bg.color = "0x2A2B30FF" ' cinza claro quando em foco
    else
      m.bg.color = "0x1A1A1FFF" ' volta ao normal
    end if
  end sub


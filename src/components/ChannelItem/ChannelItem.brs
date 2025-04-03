sub init()
    m.thumb = m.top.FindNode("thumb")
    m.title = m.top.FindNode("title")
end sub

sub showContent() as void
    content = m.top.itemContent
    print "setContent sendo renderizado: " + content.title
    m.thumb.uri = content.hdPosterUrl
    m.title.text = content.title
end sub



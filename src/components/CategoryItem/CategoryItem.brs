sub init()
  m.label = m.top.findNode("label")
end sub

sub showContent(content as Object)
  content = m.top.itemContent
  print "setContent sendo renderizado" + content.title
  m.label.text = content.title 

end sub

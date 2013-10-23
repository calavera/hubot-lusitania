# Description:
#   Nope
#
# Dependencies:
#   Nope
#
# Configuration:
#   Nope
#
# Commands:
#   hubot nope - Nope.
#
# Author:
#   Nope

do -> Array::shuffle ?= ->
  for i in [@length-1..1]
    j = Math.floor Math.random() * (i + 1)
    [@[i], @[j]] = [@[j], @[i]]
  @

module.exports = (robot) ->

  nopes = [
    "http://i.imgur.com/Gw6zf.gif"
    "http://25.media.tumblr.com/tumblr_m7nkubRAi61qg4kkko1_500.png"
    "http://i.imgur.com/cqBTC.gif"
    "http://25.media.tumblr.com/tumblr_me2levf0gR1qh9dubo1_400.gif"
    "http://www.lememe.com/wp-content/uploads/2012/12/nonononono.gif"
    "http://www.abload.de/img/michael-scott-noa6efh.gif"
    "http://i69.photobucket.com/albums/i61/0do/trek/data.gif"
    "http://img714.imageshack.us/img714/6981/1276708167348.gif"
    "http://25.media.tumblr.com/d93252138be979f40768249be6fb5ad8/tumblr_mjfnfxE5vk1qdlh1io1_400.gif"
    "http://24.media.tumblr.com/tumblr_mch5ilaasC1qes27do1_500.gif"
    "http://cdn2.mocksession.com/wp-content/uploads/2013/01/WATT-FINGER-WAG.gif"
    "http://www.netanimations.net/universa-finger-wag.gif"
    "http://www.totalprosports.com/wp-content/uploads/2013/02/kobe-finger-wag-kobe-bryant-gifs.gif"
    "http://f.cl.ly/items/0k0E2j0x3C171F1m3y2A/babu-finger-wag1-1.gif"
    "http://gifrific.com/wp-content/uploads/2012/09/Kanye-West-Shaking-Head-No.gif"
    "http://25.media.tumblr.com/c3bef0904bfae4fdfbea0c45da963c53/tumblr_miv2g4OYWd1qig079o1_250.gif"
    "http://media.tumblr.com/3d04008d4b05a421d877b0852e5b0a0a/tumblr_inline_miok33A2yO1qz4rgp.gif"
    "http://assets.sbnation.com/assets/2175737/dikembereturns.gif"
    "http://gifrific.com/wp-content/uploads/2013/02/Dikembe-Mutumbo-Cereal-Block-Geico.gif"
    "http://25.media.tumblr.com/67050299f2764d1935dc53a97a3c6390/tumblr_miwu76JzxB1renuivo1_500.gif"
    "http://24.media.tumblr.com/571f6d3ab803e0b6a57450780a7f7322/tumblr_miw7mpjIsp1rmazn7o1_500.gif"
    "http://dl.dropboxusercontent.com/u/92083149/hickeynope.jpg"
  ]

  yeps = [
    "http://www.bbqblabber.com/wp-content/uploads/2013/03/yuup.jpg"
    "http://media.tumblr.com/bea8ef2bf888b8cd0d957cf33168c2a1/tumblr_inline_mrcd62HnjD1qz4rgp.gif"
  ]

  robot.respond /nope$/i, (msg) ->
    msg.send msg.random nopes

  robot.respond /yep$/i, (msg) ->
    msg.send msg.random yeps

  robot.respond /nope bomb\s*x?(\d+)?/i, (msg) ->
    num = (Number) (msg.match[1] || 3)
    num = 3  if num < 3
    num = 10 if num > 10
    for img in nopes.shuffle()[0...num]
      msg.send img

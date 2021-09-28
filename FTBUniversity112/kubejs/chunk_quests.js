events.listen("ftbutilities.chunk.claimed", function (event) {
  if(event.player) {
    event.player.data.ftbquests.addProgress("4540cb2e", 1);
  }
});

events.listen("world.explosion.post", function (event) {
  var claimedChunk = ftbutilities.getClaimedChunk(event.block);
  
  if(claimedChunk != null && event.exploder && event.exploder.type.equals("minecraft:creeper")) {
    var o = claimedChunk.team.onlineMembers;
    
    if(!o.isEmpty()) {
      event.world.getPlayer(o.get(0)).data.ftbquests.addProgress("ac1c8fc7", 1);
    }
  }
});
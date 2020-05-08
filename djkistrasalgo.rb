require "algorithms"
include Containers

class Edge

    attr_accessor :vtx,:wt
    def initialize(nv,w)
        @vtx = nv
        @wt = w
    end

    def to_s()
        return "#{@vtx}@#{@wt}"
    end

end
class DPair
    attr_accessor :vtx,:psf,:csf
    def initialize(vtx,psf,csf)
        @vtx = vtx
        @psf = psf
        @csf = csf
    end

    def to_s()
        return "#{@vtx}-#{@psf}-#{@csf}"
    end

end

graph = []

graph[0] = [Edge.new(1,10),Edge.new(3,40)]
graph[1] = [Edge.new(0,10),Edge.new(2,10)]
graph[2] = [Edge.new(1,10),Edge.new(3,10)]
graph[3] = [Edge.new(0,40),Edge.new(4,2),Edge.new(2,10)]
graph[4] = [Edge.new(3,2),Edge.new(6,5),Edge.new(5,3)]
graph[5] = [Edge.new(4,3),Edge.new(6,3)]
graph[6] = [Edge.new(5,3),Edge.new(4,5)]

def display(graph)
    for i in (0..graph.length-1)
        print("#{i}->")
        for j in (0..graph[i].length-1)
            print("#{graph[i][j]} ,")
        end
        puts
    end
end

def djikstras(graph,src,dest)
    pq = PriorityQueue.new()
    pq.push(DPair.new(src,src.to_s(),0),0)
    hash = {}
    while (pq.size()>0)
        rem = pq.pop()

        if(hash[rem.vtx] == true)
            next
        end

        if(rem.vtx == dest)
            puts rem
            break
        end

        hash[rem.vtx] = true
        puts rem

        for ei in (0..graph[rem.vtx].length-1)
            edge = graph[rem.vtx][ei]
            if(hash.key?(edge.vtx) == false)
                pq.push(DPair.new(edge.vtx,rem.psf+edge.vtx.to_s(),rem.csf+edge.wt),-(rem.csf+edge.wt))
            end
        end

    end

end


# display(graph)

djikstras(graph,1,4)




class PriorityQueue{

    constructor(object){
        this.heapSize = 0;
        this.rootIndex = 1;
        this.heap = new Array();
        this.heap.push(object);
    }

    Swap(idx1, idx2){
        this.heap[0] = this.heap[idx1];
        this.heap[idx1] = this.heap[idx2];
        this.heap[idx2] = this.heap[0];
    }

    // first 기준 min heap
    Upheap(idx){

        if(idx == this.rootIndex) return;

        var par = parseInt(idx/2);
        
        if(this.heap[par].first > this.heap[idx].first){
            this.Swap(par,idx);
            this.Upheap(par);
        } else return;
    }

    DownHeap(idx){

        var left = parseInt(idx*2);
        var right = parseInt(left + 1);

        if(right <= this.heapSize){
            if(this.heap[left].first < this.heap[right].first){
                if(this.heap[left].first < this.heap[idx].first){
                    this.Swap(left,idx);
                    this.DownHeap(left);
                }
                else return;
            }
            else{
                if(this.heap[right].first < this.heap[idx].first){
                    this.Swap(right,idx);
                    this.DownHeap(right);
                }
                else return;
            }
        }
        else{
            if(left <= this.heapSize){
                if(this.heap[left].first < this.heap[idx].first){
                    this.Swap(left, idx);
                }
            }
            else return;
        }
    }

    Insert(object){
        this.heap.push(object);
        this.heapSize++;
        this.Upheap(this.heapSize);
    }

    Pop(){
        this.heap[1] = this.heap[this.heapSize];
        this.heapSize--;
        this.heap.pop();
        this.DownHeap(this.rootIndex);
    }

    Top(){
        return this.heap[1];
    }
}

module.exports = PriorityQueue;
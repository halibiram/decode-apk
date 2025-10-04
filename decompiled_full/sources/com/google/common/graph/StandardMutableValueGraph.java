package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class StandardMutableValueGraph<N, V> extends StandardValueGraph<N, V> implements MutableValueGraph<N, V> {
    private final ElementOrder<N> incidentEdgeOrder;

    public StandardMutableValueGraph(AbstractGraphBuilder<? super N> abstractGraphBuilder) {
        super(abstractGraphBuilder);
        this.incidentEdgeOrder = (ElementOrder<N>) abstractGraphBuilder.incidentEdgeOrder.cast();
    }

    @CanIgnoreReturnValue
    private GraphConnections<N, V> addNodeInternal(N n) {
        boolean z;
        GraphConnections<N, V> newConnections = newConnections();
        if (this.nodeConnections.put(n, newConnections) == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        return newConnections;
    }

    private GraphConnections<N, V> newConnections() {
        if (isDirected()) {
            return DirectedGraphConnections.of(this.incidentEdgeOrder);
        }
        return UndirectedGraphConnections.of(this.incidentEdgeOrder);
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public boolean addNode(N n) {
        Preconditions.checkNotNull(n, new ObfuscatedString(new long[]{-2440054828059454577L, 2127733770125702957L}).toString());
        if (containsNode(n)) {
            return false;
        }
        addNodeInternal(n);
        return true;
    }

    @Override // com.google.common.graph.AbstractValueGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
    public ElementOrder<N> incidentEdgeOrder() {
        return this.incidentEdgeOrder;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    @CheckForNull
    public V putEdgeValue(N n, N n2, V v) {
        Preconditions.checkNotNull(n, new ObfuscatedString(new long[]{7808444512455789361L, -3016990682261870412L}).toString());
        Preconditions.checkNotNull(n2, new ObfuscatedString(new long[]{5280626817559588600L, -6749520986989959521L}).toString());
        Preconditions.checkNotNull(v, new ObfuscatedString(new long[]{760963284394323878L, 1926072056294262280L}).toString());
        if (!allowsSelfLoops()) {
            Preconditions.checkArgument(!n.equals(n2), new ObfuscatedString(new long[]{6465433852143838457L, 1287529461499385636L, 2501451881422401951L, -6236391436170807348L, -98760728645977765L, 285346436358402346L, -7617901162129153484L, -7100471349802204756L, 4660574107139650378L, -3143327298656572084L, 8572877659715051916L, 1992745327545824441L, 9094011366835268912L, -6914747980409731868L, 1093202080968646153L, -8308938599545064719L, 1502400149570770987L, -8296597429687808676L, -8578264062671339547L, -695450164316562301L, -138112536313378426L}).toString(), n);
        }
        GraphConnections<N, V> graphConnections = this.nodeConnections.get(n);
        if (graphConnections == null) {
            graphConnections = addNodeInternal(n);
        }
        V addSuccessor = graphConnections.addSuccessor(n2, v);
        GraphConnections<N, V> graphConnections2 = this.nodeConnections.get(n2);
        if (graphConnections2 == null) {
            graphConnections2 = addNodeInternal(n2);
        }
        graphConnections2.addPredecessor(n, v);
        if (addSuccessor == null) {
            long j = this.edgeCount + 1;
            this.edgeCount = j;
            Graphs.checkPositive(j);
        }
        return addSuccessor;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    @CheckForNull
    public V removeEdge(N n, N n2) {
        Preconditions.checkNotNull(n, new ObfuscatedString(new long[]{-3188577514411920042L, -4107059430855819055L}).toString());
        Preconditions.checkNotNull(n2, new ObfuscatedString(new long[]{-2290323589547572843L, -5335682246287370436L}).toString());
        GraphConnections<N, V> graphConnections = this.nodeConnections.get(n);
        GraphConnections<N, V> graphConnections2 = this.nodeConnections.get(n2);
        if (graphConnections == null || graphConnections2 == null) {
            return null;
        }
        V removeSuccessor = graphConnections.removeSuccessor(n2);
        if (removeSuccessor != null) {
            graphConnections2.removePredecessor(n);
            long j = this.edgeCount - 1;
            this.edgeCount = j;
            Graphs.checkNonNegative(j);
        }
        return removeSuccessor;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    public boolean removeNode(N n) {
        boolean z;
        Preconditions.checkNotNull(n, new ObfuscatedString(new long[]{-2115050613242710344L, 1921686129193942903L}).toString());
        GraphConnections<N, V> graphConnections = this.nodeConnections.get(n);
        if (graphConnections == null) {
            return false;
        }
        if (allowsSelfLoops() && graphConnections.removeSuccessor(n) != null) {
            graphConnections.removePredecessor(n);
            this.edgeCount--;
        }
        Iterator<N> it = graphConnections.successors().iterator();
        while (it.hasNext()) {
            GraphConnections<N, V> withoutCaching = this.nodeConnections.getWithoutCaching(it.next());
            Objects.requireNonNull(withoutCaching);
            withoutCaching.removePredecessor(n);
            this.edgeCount--;
        }
        if (isDirected()) {
            Iterator<N> it2 = graphConnections.predecessors().iterator();
            while (it2.hasNext()) {
                GraphConnections<N, V> withoutCaching2 = this.nodeConnections.getWithoutCaching(it2.next());
                Objects.requireNonNull(withoutCaching2);
                if (withoutCaching2.removeSuccessor(n) != null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z);
                this.edgeCount--;
            }
        }
        this.nodeConnections.remove(n);
        Graphs.checkNonNegative(this.edgeCount);
        return true;
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    @CheckForNull
    public V removeEdge(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return removeEdge(endpointPair.nodeU(), endpointPair.nodeV());
    }

    @Override // com.google.common.graph.MutableValueGraph
    @CanIgnoreReturnValue
    @CheckForNull
    public V putEdgeValue(EndpointPair<N> endpointPair, V v) {
        validateEndpoints(endpointPair);
        return putEdgeValue(endpointPair.nodeU(), endpointPair.nodeV(), v);
    }
}

package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.math.IntMath;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@Beta
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class AbstractNetwork<N, E> implements Network<N, E> {

    /* renamed from: com.google.common.graph.AbstractNetwork$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends AbstractGraph<N> {
        public AnonymousClass1() {
        }

        @Override // com.google.common.graph.BaseGraph, com.google.common.graph.Graph
        public Set<N> adjacentNodes(N n) {
            return AbstractNetwork.this.adjacentNodes(n);
        }

        @Override // com.google.common.graph.BaseGraph, com.google.common.graph.Graph
        public boolean allowsSelfLoops() {
            return AbstractNetwork.this.allowsSelfLoops();
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
        public Set<EndpointPair<N>> edges() {
            if (AbstractNetwork.this.allowsParallelEdges()) {
                return super.edges();
            }
            return new AbstractSet<EndpointPair<N>>() { // from class: com.google.common.graph.AbstractNetwork.1.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean contains(@CheckForNull Object obj) {
                    if (!(obj instanceof EndpointPair)) {
                        return false;
                    }
                    EndpointPair<?> endpointPair = (EndpointPair) obj;
                    if (!AnonymousClass1.this.isOrderingCompatible(endpointPair) || !AnonymousClass1.this.nodes().contains(endpointPair.nodeU()) || !AnonymousClass1.this.successors((AnonymousClass1) endpointPair.nodeU()).contains(endpointPair.nodeV())) {
                        return false;
                    }
                    return true;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<EndpointPair<N>> iterator() {
                    return Iterators.transform(AbstractNetwork.this.edges().iterator(), new Function<E, EndpointPair<N>>() { // from class: com.google.common.graph.AbstractNetwork.1.1.1
                        @Override // com.google.common.base.Function
                        public /* bridge */ /* synthetic */ Object apply(Object obj) {
                            return apply((C02601) obj);
                        }

                        @Override // com.google.common.base.Function
                        public EndpointPair<N> apply(E e) {
                            return AbstractNetwork.this.incidentNodes(e);
                        }
                    });
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return AbstractNetwork.this.edges().size();
                }
            };
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
        public ElementOrder<N> incidentEdgeOrder() {
            return ElementOrder.unordered();
        }

        @Override // com.google.common.graph.BaseGraph, com.google.common.graph.Graph
        public boolean isDirected() {
            return AbstractNetwork.this.isDirected();
        }

        @Override // com.google.common.graph.BaseGraph, com.google.common.graph.Graph
        public ElementOrder<N> nodeOrder() {
            return AbstractNetwork.this.nodeOrder();
        }

        @Override // com.google.common.graph.BaseGraph, com.google.common.graph.Graph
        public Set<N> nodes() {
            return AbstractNetwork.this.nodes();
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
        public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
            return predecessors((AnonymousClass1) obj);
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
        public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
            return successors((AnonymousClass1) obj);
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph, com.google.common.graph.PredecessorsFunction
        public Set<N> predecessors(N n) {
            return AbstractNetwork.this.predecessors((AbstractNetwork) n);
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph, com.google.common.graph.SuccessorsFunction
        public Set<N> successors(N n) {
            return AbstractNetwork.this.successors((AbstractNetwork) n);
        }
    }

    private Predicate<E> connectedPredicate(final N n, final N n2) {
        return new Predicate<E>() { // from class: com.google.common.graph.AbstractNetwork.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.base.Predicate
            public boolean apply(E e) {
                return AbstractNetwork.this.incidentNodes(e).adjacentNode(n).equals(n2);
            }
        };
    }

    private static <N, E> Map<E, EndpointPair<N>> edgeIncidentNodesMap(final Network<N, E> network) {
        return Maps.asMap(network.edges(), new Function<E, EndpointPair<N>>() { // from class: com.google.common.graph.AbstractNetwork.3
            @Override // com.google.common.base.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply((AnonymousClass3) obj);
            }

            @Override // com.google.common.base.Function
            public EndpointPair<N> apply(E e) {
                return Network.this.incidentNodes(e);
            }
        });
    }

    @Override // com.google.common.graph.Network
    public Set<E> adjacentEdges(E e) {
        EndpointPair<N> incidentNodes = incidentNodes(e);
        return Sets.difference(Sets.union(incidentEdges(incidentNodes.nodeU()), incidentEdges(incidentNodes.nodeV())), ImmutableSet.of((Object) e));
    }

    @Override // com.google.common.graph.Network
    public Graph<N> asGraph() {
        return new AnonymousClass1();
    }

    @Override // com.google.common.graph.Network
    public int degree(N n) {
        if (isDirected()) {
            return IntMath.saturatedAdd(inEdges(n).size(), outEdges(n).size());
        }
        return IntMath.saturatedAdd(incidentEdges(n).size(), edgesConnecting(n, n).size());
    }

    @Override // com.google.common.graph.Network
    @CheckForNull
    public E edgeConnectingOrNull(N n, N n2) {
        Set<E> edgesConnecting = edgesConnecting(n, n2);
        int size = edgesConnecting.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return edgesConnecting.iterator().next();
        }
        throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{6372894488488550054L, -769756668236157319L, 8080008799121887710L, -8782457326785686141L, 2837641083301570716L, -6241439134314586306L, -1131780157140801980L, 3442058653805550660L, -564634025056738499L, -22385718092963004L, -6273555081615531189L, -4185604101025335811L, -3338933095403922272L, -3565359796992868030L, -3119897984817378454L, -2364020468643588452L}).toString(), n, n2));
    }

    @Override // com.google.common.graph.Network
    public Set<E> edgesConnecting(N n, N n2) {
        Set<E> outEdges = outEdges(n);
        Set<E> inEdges = inEdges(n2);
        if (outEdges.size() <= inEdges.size()) {
            return DesugarCollections.unmodifiableSet(Sets.filter(outEdges, connectedPredicate(n, n2)));
        }
        return DesugarCollections.unmodifiableSet(Sets.filter(inEdges, connectedPredicate(n2, n)));
    }

    @Override // com.google.common.graph.Network
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Network)) {
            return false;
        }
        Network network = (Network) obj;
        if (isDirected() == network.isDirected() && nodes().equals(network.nodes()) && edgeIncidentNodesMap(this).equals(edgeIncidentNodesMap(network))) {
            return true;
        }
        return false;
    }

    @Override // com.google.common.graph.Network
    public boolean hasEdgeConnecting(N n, N n2) {
        Preconditions.checkNotNull(n);
        Preconditions.checkNotNull(n2);
        return nodes().contains(n) && successors((AbstractNetwork<N, E>) n).contains(n2);
    }

    @Override // com.google.common.graph.Network
    public final int hashCode() {
        return edgeIncidentNodesMap(this).hashCode();
    }

    @Override // com.google.common.graph.Network
    public int inDegree(N n) {
        if (isDirected()) {
            return inEdges(n).size();
        }
        return degree(n);
    }

    public final boolean isOrderingCompatible(EndpointPair<?> endpointPair) {
        if (!endpointPair.isOrdered() && isDirected()) {
            return false;
        }
        return true;
    }

    @Override // com.google.common.graph.Network
    public int outDegree(N n) {
        if (isDirected()) {
            return outEdges(n).size();
        }
        return degree(n);
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.PredecessorsFunction
    public /* bridge */ /* synthetic */ Iterable predecessors(Object obj) {
        Iterable predecessors;
        predecessors = predecessors((AbstractNetwork<N, E>) ((Network) obj));
        return predecessors;
    }

    @Override // com.google.common.graph.Network, com.google.common.graph.SuccessorsFunction
    public /* bridge */ /* synthetic */ Iterable successors(Object obj) {
        Iterable successors;
        successors = successors((AbstractNetwork<N, E>) ((Network) obj));
        return successors;
    }

    public String toString() {
        boolean isDirected = isDirected();
        boolean allowsParallelEdges = allowsParallelEdges();
        boolean allowsSelfLoops = allowsSelfLoops();
        String valueOf = String.valueOf(nodes());
        String valueOf2 = String.valueOf(edgeIncidentNodesMap(this));
        StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 87);
        sb.append(new ObfuscatedString(new long[]{7286300729127178381L, -1328078207731317525L, 6139891149534926565L}).toString());
        sb.append(isDirected);
        sb.append(new ObfuscatedString(new long[]{4761172039128702343L, -8293343488326710362L, 2778195164351769825L, -9187851875312194774L}).toString());
        sb.append(allowsParallelEdges);
        sb.append(new ObfuscatedString(new long[]{-8285776646087070370L, -3874466759306692796L, -1828073887495527886L, 5514729471777162597L}).toString());
        sb.append(allowsSelfLoops);
        sb.append(new ObfuscatedString(new long[]{-5865356600131557253L, -8210621642246681273L, 8290984342158216022L}).toString());
        sb.append(valueOf);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-602411708891645816L, -7108678586767644664L, 2313980574549622908L}), sb, valueOf2);
    }

    public final void validateEndpoints(EndpointPair<?> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        Preconditions.checkArgument(isOrderingCompatible(endpointPair), new ObfuscatedString(new long[]{1724406299075807007L, -5850393538427035515L, -2097028691825447297L, -7007553547981974284L, -7905805758747686648L, -6008894162212266933L, 476711248622678575L, 3136671370654326559L, 2773739791980370352L, 9196875899440644000L}).toString());
    }

    @Override // com.google.common.graph.Network
    public boolean hasEdgeConnecting(EndpointPair<N> endpointPair) {
        Preconditions.checkNotNull(endpointPair);
        if (isOrderingCompatible(endpointPair)) {
            return hasEdgeConnecting(endpointPair.nodeU(), endpointPair.nodeV());
        }
        return false;
    }

    @Override // com.google.common.graph.Network
    @CheckForNull
    public E edgeConnectingOrNull(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return edgeConnectingOrNull(endpointPair.nodeU(), endpointPair.nodeV());
    }

    @Override // com.google.common.graph.Network
    public Set<E> edgesConnecting(EndpointPair<N> endpointPair) {
        validateEndpoints(endpointPair);
        return edgesConnecting(endpointPair.nodeU(), endpointPair.nodeV());
    }
}

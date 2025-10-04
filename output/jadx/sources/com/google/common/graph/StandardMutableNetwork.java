package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.Collection;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class StandardMutableNetwork<N, E> extends StandardNetwork<N, E> implements MutableNetwork<N, E> {
    public StandardMutableNetwork(NetworkBuilder<? super N, ? super E> networkBuilder) {
        super(networkBuilder);
    }

    @CanIgnoreReturnValue
    private NetworkConnections<N, E> addNodeInternal(N n) {
        boolean z;
        NetworkConnections<N, E> newConnections = newConnections();
        if (this.nodeConnections.put(n, newConnections) == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        return newConnections;
    }

    private NetworkConnections<N, E> newConnections() {
        if (isDirected()) {
            if (allowsParallelEdges()) {
                return DirectedMultiNetworkConnections.of();
            }
            return DirectedNetworkConnections.of();
        }
        if (allowsParallelEdges()) {
            return UndirectedMultiNetworkConnections.of();
        }
        return UndirectedNetworkConnections.of();
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean addEdge(N n, N n2, E e) {
        Preconditions.checkNotNull(n, new ObfuscatedString(new long[]{6798178122329617015L, -3461921096960237566L}).toString());
        Preconditions.checkNotNull(n2, new ObfuscatedString(new long[]{825157240031156291L, -8633444306797967437L}).toString());
        Preconditions.checkNotNull(e, new ObfuscatedString(new long[]{173108426284565462L, 4638393627438760848L}).toString());
        if (containsEdge(e)) {
            EndpointPair<N> incidentNodes = incidentNodes(e);
            EndpointPair of = EndpointPair.of(this, n, n2);
            Preconditions.checkArgument(incidentNodes.equals(of), new ObfuscatedString(new long[]{2529787746680054317L, 7771855063226132657L, -5297702008428546256L, 6928985884658661789L, -5624418077036414426L, -8312861662008193555L, -7885451688221872673L, 6771098466783950360L, 1230473561776241620L, 950207432266098991L, -7901692318365572416L, 9211960361474545468L, 4878128085658402482L, -3869022826570740144L, 5653969386887395743L, -721289532957673508L}).toString(), e, incidentNodes, of);
            return false;
        }
        NetworkConnections<N, E> networkConnections = this.nodeConnections.get(n);
        if (!allowsParallelEdges()) {
            Preconditions.checkArgument(networkConnections == null || !networkConnections.successors().contains(n2), new ObfuscatedString(new long[]{-5489129781770936578L, -8530498986158842911L, -3056184361628578311L, 5184454701176897515L, 8170543909609617943L, 5038489768296360725L, -5117387290674100157L, -5369036055106236000L, 3477973318344408050L, 4004252800784659842L, -1522585518999486860L, -2124779827914949790L, -4549334982969001713L, 1830100576038012470L, -6681742939703709624L, -2196067473359090331L, -5928465353745731525L, -3302791019878709914L, 2403894039800379259L, -1302473918648871231L, -8006768304104277520L}).toString(), n, n2);
        }
        boolean equals = n.equals(n2);
        if (!allowsSelfLoops()) {
            Preconditions.checkArgument(!equals, new ObfuscatedString(new long[]{-4588004899699596119L, -1606950275300123775L, -8563766137947594085L, -6615863435932049056L, -5669842989905553017L, 7126708260634316575L, -3579657542738529450L, -5105504616979468311L, -6029855198970171539L, 604389702795847229L, 4687465098466694589L, 1693546417399153682L, -8505408742687847290L, 5120309318777071433L, -5097581216591721977L, -4413227295673911602L, 4419425599602376325L, 8663676185565607118L, 3246634948926408678L, -5201887683818529684L, 2582039771556085465L}).toString(), n);
        }
        if (networkConnections == null) {
            networkConnections = addNodeInternal(n);
        }
        networkConnections.addOutEdge(e, n2);
        NetworkConnections<N, E> networkConnections2 = this.nodeConnections.get(n2);
        if (networkConnections2 == null) {
            networkConnections2 = addNodeInternal(n2);
        }
        networkConnections2.addInEdge(e, n, equals);
        this.edgeToReferenceNode.put(e, n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean addNode(N n) {
        Preconditions.checkNotNull(n, new ObfuscatedString(new long[]{2991300451162927409L, 8259542051270268317L}).toString());
        if (containsNode(n)) {
            return false;
        }
        addNodeInternal(n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean removeEdge(E e) {
        Preconditions.checkNotNull(e, new ObfuscatedString(new long[]{-8848486736628132275L, -7671474969158329420L}).toString());
        N n = this.edgeToReferenceNode.get(e);
        boolean z = false;
        if (n == null) {
            return false;
        }
        NetworkConnections<N, E> networkConnections = this.nodeConnections.get(n);
        Objects.requireNonNull(networkConnections);
        NetworkConnections<N, E> networkConnections2 = networkConnections;
        N adjacentNode = networkConnections2.adjacentNode(e);
        NetworkConnections<N, E> networkConnections3 = this.nodeConnections.get(adjacentNode);
        Objects.requireNonNull(networkConnections3);
        NetworkConnections<N, E> networkConnections4 = networkConnections3;
        networkConnections2.removeOutEdge(e);
        if (allowsSelfLoops() && n.equals(adjacentNode)) {
            z = true;
        }
        networkConnections4.removeInEdge(e, z);
        this.edgeToReferenceNode.remove(e);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean removeNode(N n) {
        Preconditions.checkNotNull(n, new ObfuscatedString(new long[]{6541391475368826114L, 3286122590975586629L}).toString());
        NetworkConnections<N, E> networkConnections = this.nodeConnections.get(n);
        if (networkConnections == null) {
            return false;
        }
        UnmodifiableIterator<E> it = ImmutableList.copyOf((Collection) networkConnections.incidentEdges()).iterator();
        while (it.hasNext()) {
            removeEdge(it.next());
        }
        this.nodeConnections.remove(n);
        return true;
    }

    @Override // com.google.common.graph.MutableNetwork
    @CanIgnoreReturnValue
    public boolean addEdge(EndpointPair<N> endpointPair, E e) {
        validateEndpoints(endpointPair);
        return addEdge(endpointPair.nodeU(), endpointPair.nodeV(), e);
    }
}

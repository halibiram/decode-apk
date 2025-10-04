package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.Immutable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@Immutable(containerOf = {"N"})
@Beta
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class EndpointPair<N> implements Iterable<N> {
    private final N nodeU;
    private final N nodeV;

    /* loaded from: classes2.dex */
    public static final class Ordered<N> extends EndpointPair<N> {
        @Override // com.google.common.graph.EndpointPair
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EndpointPair)) {
                return false;
            }
            EndpointPair endpointPair = (EndpointPair) obj;
            if (isOrdered() == endpointPair.isOrdered() && source().equals(endpointPair.source()) && target().equals(endpointPair.target())) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.graph.EndpointPair
        public int hashCode() {
            return Objects.hashCode(source(), target());
        }

        @Override // com.google.common.graph.EndpointPair
        public boolean isOrdered() {
            return true;
        }

        @Override // com.google.common.graph.EndpointPair, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return iterator();
        }

        @Override // com.google.common.graph.EndpointPair
        public N source() {
            return nodeU();
        }

        @Override // com.google.common.graph.EndpointPair
        public N target() {
            return nodeV();
        }

        public String toString() {
            String valueOf = String.valueOf(source());
            String valueOf2 = String.valueOf(target());
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 6);
            sb.append(new ObfuscatedString(new long[]{6522829447758576086L, 4270361692352000551L}).toString());
            sb.append(valueOf);
            sb.append(new ObfuscatedString(new long[]{390256245479493213L, -5895783634329170622L}).toString());
            sb.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1659013886202937262L, 2675824000043360008L}), sb);
        }

        private Ordered(N n, N n2) {
            super(n, n2);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Unordered<N> extends EndpointPair<N> {
        @Override // com.google.common.graph.EndpointPair
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EndpointPair)) {
                return false;
            }
            EndpointPair endpointPair = (EndpointPair) obj;
            if (isOrdered() != endpointPair.isOrdered()) {
                return false;
            }
            if (nodeU().equals(endpointPair.nodeU())) {
                return nodeV().equals(endpointPair.nodeV());
            }
            if (nodeU().equals(endpointPair.nodeV()) && nodeV().equals(endpointPair.nodeU())) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.graph.EndpointPair
        public int hashCode() {
            return nodeV().hashCode() + nodeU().hashCode();
        }

        @Override // com.google.common.graph.EndpointPair
        public boolean isOrdered() {
            return false;
        }

        @Override // com.google.common.graph.EndpointPair, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return iterator();
        }

        @Override // com.google.common.graph.EndpointPair
        public N source() {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-5544568283553483023L, -4406392500550240283L, -75199171507176580L, -5698012050633764630L, 7009389249983872268L, 1843319225580559443L, 5136815947465400352L, -8095863111998103287L, 9194274632324096730L, 747651972178685093L, -4833531010891451943L, 7609124220272774700L, -3189291707987982454L, 1227315061621178443L, 1564707268584692104L, 996150252373545114L, 3730851025323492351L, -226251232316601881L, -7535699666755150149L, 6861482449971760302L, -8846592788862336510L, 7630479275594134097L, 7875856087821338023L}).toString());
        }

        @Override // com.google.common.graph.EndpointPair
        public N target() {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8960004599140988904L, 2325344084017274513L, -5007198851759225077L, -819103865009804206L, -3060344422276369574L, -3018592938644963076L, -4118244904879974718L, -8223168635045233459L, -1545689402891249134L, -9023147558096850421L, 1096523396695747456L, 8648186347247807500L, -85054285250776179L, 7917062763752011674L, 9126514322676513844L, -7913235397330126708L, -7955078276414756842L, 1686144344459748701L, -4596096555525621817L, -748848131014805428L, -3216131336132220917L, 6721842070199857153L, 758594344911699739L}).toString());
        }

        public String toString() {
            String valueOf = String.valueOf(nodeU());
            String valueOf2 = String.valueOf(nodeV());
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 4);
            sb.append(new ObfuscatedString(new long[]{-2977843780572744944L, -641452810745286968L}).toString());
            sb.append(valueOf);
            sb.append(new ObfuscatedString(new long[]{-4917266889222466045L, -5702817454824485792L}).toString());
            sb.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-673886452536949908L, -1763490879640232944L}), sb);
        }

        private Unordered(N n, N n2) {
            super(n, n2);
        }
    }

    public static <N> EndpointPair<N> of(Graph<?> graph, N n, N n2) {
        return graph.isDirected() ? ordered(n, n2) : unordered(n, n2);
    }

    public static <N> EndpointPair<N> ordered(N n, N n2) {
        return new Ordered(n, n2);
    }

    public static <N> EndpointPair<N> unordered(N n, N n2) {
        return new Unordered(n2, n);
    }

    public final N adjacentNode(N n) {
        if (n.equals(this.nodeU)) {
            return this.nodeV;
        }
        if (n.equals(this.nodeV)) {
            return this.nodeU;
        }
        String valueOf = String.valueOf(this);
        String valueOf2 = String.valueOf(n);
        StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 36);
        sb.append(new ObfuscatedString(new long[]{-7649963224470250706L, -2267830328943840847L, -719185093542505873L}).toString());
        sb.append(valueOf);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-2605431087951544276L, 6234476278537370109L, -833013740634801508L, -2527381245801580338L}), sb, valueOf2));
    }

    public abstract boolean equals(@CheckForNull Object obj);

    public abstract int hashCode();

    public abstract boolean isOrdered();

    public final N nodeU() {
        return this.nodeU;
    }

    public final N nodeV() {
        return this.nodeV;
    }

    public abstract N source();

    public abstract N target();

    private EndpointPair(N n, N n2) {
        this.nodeU = (N) Preconditions.checkNotNull(n);
        this.nodeV = (N) Preconditions.checkNotNull(n2);
    }

    public static <N> EndpointPair<N> of(Network<?, ?> network, N n, N n2) {
        return network.isDirected() ? ordered(n, n2) : unordered(n, n2);
    }

    @Override // java.lang.Iterable
    public final UnmodifiableIterator<N> iterator() {
        return Iterators.forArray(this.nodeU, this.nodeV);
    }
}

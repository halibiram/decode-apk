package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.graph.ElementOrder;
import j$.util.DesugarCollections;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class DirectedGraphConnections<N, V> implements GraphConnections<N, V> {
    private static final Object PRED = new Object();
    private final Map<N, Object> adjacentNodeValues;

    @CheckForNull
    private final List<NodeConnection<N>> orderedNodeConnections;
    private int predecessorCount;
    private int successorCount;

    /* renamed from: com.google.common.graph.DirectedGraphConnections$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends AbstractSet<N> {

        /* renamed from: com.google.common.graph.DirectedGraphConnections$1$1 */
        /* loaded from: classes2.dex */
        public class C02611 extends AbstractIterator<N> {
            final /* synthetic */ Iterator val$nodeConnections;
            final /* synthetic */ Set val$seenNodes;

            public C02611(AnonymousClass1 anonymousClass1, Iterator it, Set set) {
                r2 = it;
                r3 = set;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (r2.hasNext()) {
                    NodeConnection nodeConnection = (NodeConnection) r2.next();
                    if (r3.add(nodeConnection.node)) {
                        return nodeConnection.node;
                    }
                }
                return endOfData();
            }
        }

        public AnonymousClass1() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return DirectedGraphConnections.this.adjacentNodeValues.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return DirectedGraphConnections.this.adjacentNodeValues.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<N> iterator() {
            return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.1.1
                final /* synthetic */ Iterator val$nodeConnections;
                final /* synthetic */ Set val$seenNodes;

                public C02611(AnonymousClass1 this, Iterator it, Set set) {
                    r2 = it;
                    r3 = set;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public N computeNext() {
                    while (r2.hasNext()) {
                        NodeConnection nodeConnection = (NodeConnection) r2.next();
                        if (r3.add(nodeConnection.node)) {
                            return nodeConnection.node;
                        }
                    }
                    return endOfData();
                }
            };
        }
    }

    /* renamed from: com.google.common.graph.DirectedGraphConnections$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 extends AbstractSet<N> {

        /* renamed from: com.google.common.graph.DirectedGraphConnections$2$1 */
        /* loaded from: classes2.dex */
        public class AnonymousClass1 extends AbstractIterator<N> {
            final /* synthetic */ Iterator val$entries;

            public AnonymousClass1(AnonymousClass2 anonymousClass2, Iterator it) {
                r2 = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (r2.hasNext()) {
                    Map.Entry entry = (Map.Entry) r2.next();
                    if (DirectedGraphConnections.isPredecessor(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return endOfData();
            }
        }

        /* renamed from: com.google.common.graph.DirectedGraphConnections$2$2 */
        /* loaded from: classes2.dex */
        public class C02622 extends AbstractIterator<N> {
            final /* synthetic */ Iterator val$nodeConnections;

            public C02622(AnonymousClass2 anonymousClass2, Iterator it) {
                r2 = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (r2.hasNext()) {
                    NodeConnection nodeConnection = (NodeConnection) r2.next();
                    if (nodeConnection instanceof NodeConnection.Pred) {
                        return nodeConnection.node;
                    }
                }
                return endOfData();
            }
        }

        public AnonymousClass2() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return DirectedGraphConnections.isPredecessor(DirectedGraphConnections.this.adjacentNodeValues.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return DirectedGraphConnections.this.predecessorCount;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<N> iterator() {
            if (DirectedGraphConnections.this.orderedNodeConnections == null) {
                return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.2.1
                    final /* synthetic */ Iterator val$entries;

                    public AnonymousClass1(AnonymousClass2 this, Iterator it) {
                        r2 = it;
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    public N computeNext() {
                        while (r2.hasNext()) {
                            Map.Entry entry = (Map.Entry) r2.next();
                            if (DirectedGraphConnections.isPredecessor(entry.getValue())) {
                                return (N) entry.getKey();
                            }
                        }
                        return endOfData();
                    }
                };
            }
            return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.2.2
                final /* synthetic */ Iterator val$nodeConnections;

                public C02622(AnonymousClass2 this, Iterator it) {
                    r2 = it;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public N computeNext() {
                    while (r2.hasNext()) {
                        NodeConnection nodeConnection = (NodeConnection) r2.next();
                        if (nodeConnection instanceof NodeConnection.Pred) {
                            return nodeConnection.node;
                        }
                    }
                    return endOfData();
                }
            };
        }
    }

    /* renamed from: com.google.common.graph.DirectedGraphConnections$3 */
    /* loaded from: classes2.dex */
    public class AnonymousClass3 extends AbstractSet<N> {

        /* renamed from: com.google.common.graph.DirectedGraphConnections$3$1 */
        /* loaded from: classes2.dex */
        public class AnonymousClass1 extends AbstractIterator<N> {
            final /* synthetic */ Iterator val$entries;

            public AnonymousClass1(AnonymousClass3 anonymousClass3, Iterator it) {
                r2 = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (r2.hasNext()) {
                    Map.Entry entry = (Map.Entry) r2.next();
                    if (DirectedGraphConnections.isSuccessor(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return endOfData();
            }
        }

        /* renamed from: com.google.common.graph.DirectedGraphConnections$3$2 */
        /* loaded from: classes2.dex */
        public class AnonymousClass2 extends AbstractIterator<N> {
            final /* synthetic */ Iterator val$nodeConnections;

            public AnonymousClass2(AnonymousClass3 anonymousClass3, Iterator it) {
                r2 = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public N computeNext() {
                while (r2.hasNext()) {
                    NodeConnection nodeConnection = (NodeConnection) r2.next();
                    if (nodeConnection instanceof NodeConnection.Succ) {
                        return nodeConnection.node;
                    }
                }
                return endOfData();
            }
        }

        public AnonymousClass3() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return DirectedGraphConnections.isSuccessor(DirectedGraphConnections.this.adjacentNodeValues.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return DirectedGraphConnections.this.successorCount;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<N> iterator() {
            if (DirectedGraphConnections.this.orderedNodeConnections == null) {
                return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.3.1
                    final /* synthetic */ Iterator val$entries;

                    public AnonymousClass1(AnonymousClass3 this, Iterator it) {
                        r2 = it;
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    public N computeNext() {
                        while (r2.hasNext()) {
                            Map.Entry entry = (Map.Entry) r2.next();
                            if (DirectedGraphConnections.isSuccessor(entry.getValue())) {
                                return (N) entry.getKey();
                            }
                        }
                        return endOfData();
                    }
                };
            }
            return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.3.2
                final /* synthetic */ Iterator val$nodeConnections;

                public AnonymousClass2(AnonymousClass3 this, Iterator it) {
                    r2 = it;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public N computeNext() {
                    while (r2.hasNext()) {
                        NodeConnection nodeConnection = (NodeConnection) r2.next();
                        if (nodeConnection instanceof NodeConnection.Succ) {
                            return nodeConnection.node;
                        }
                    }
                    return endOfData();
                }
            };
        }
    }

    /* renamed from: com.google.common.graph.DirectedGraphConnections$4 */
    /* loaded from: classes2.dex */
    public class AnonymousClass4 extends AbstractIterator<EndpointPair<N>> {
        final /* synthetic */ AtomicBoolean val$alreadySeenSelfLoop;
        final /* synthetic */ Iterator val$resultWithDoubleSelfLoop;

        public AnonymousClass4(DirectedGraphConnections directedGraphConnections, Iterator it, AtomicBoolean atomicBoolean) {
            r2 = it;
            r3 = atomicBoolean;
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        public EndpointPair<N> computeNext() {
            while (r2.hasNext()) {
                EndpointPair<N> endpointPair = (EndpointPair) r2.next();
                if (!endpointPair.nodeU().equals(endpointPair.nodeV()) || !r3.getAndSet(true)) {
                    return endpointPair;
                }
            }
            return endOfData();
        }
    }

    /* renamed from: com.google.common.graph.DirectedGraphConnections$5 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$google$common$graph$ElementOrder$Type;

        static {
            int[] iArr = new int[ElementOrder.Type.values().length];
            $SwitchMap$com$google$common$graph$ElementOrder$Type = iArr;
            try {
                iArr[ElementOrder.Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$common$graph$ElementOrder$Type[ElementOrder.Type.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class NodeConnection<N> {
        final N node;

        /* loaded from: classes2.dex */
        public static final class Pred<N> extends NodeConnection<N> {
            public Pred(N n) {
                super(n);
            }

            public boolean equals(@CheckForNull Object obj) {
                if (obj instanceof Pred) {
                    return this.node.equals(((Pred) obj).node);
                }
                return false;
            }

            public int hashCode() {
                return this.node.hashCode() + Pred.class.hashCode();
            }
        }

        /* loaded from: classes2.dex */
        public static final class Succ<N> extends NodeConnection<N> {
            public Succ(N n) {
                super(n);
            }

            public boolean equals(@CheckForNull Object obj) {
                if (obj instanceof Succ) {
                    return this.node.equals(((Succ) obj).node);
                }
                return false;
            }

            public int hashCode() {
                return this.node.hashCode() + Succ.class.hashCode();
            }
        }

        public NodeConnection(N n) {
            this.node = (N) Preconditions.checkNotNull(n);
        }
    }

    /* loaded from: classes2.dex */
    public static final class PredAndSucc {
        private final Object successorValue;

        public PredAndSucc(Object obj) {
            this.successorValue = obj;
        }
    }

    private DirectedGraphConnections(Map<N, Object> map, @CheckForNull List<NodeConnection<N>> list, int i, int i2) {
        boolean z;
        this.adjacentNodeValues = (Map) Preconditions.checkNotNull(map);
        this.orderedNodeConnections = list;
        this.predecessorCount = Graphs.checkNonNegative(i);
        this.successorCount = Graphs.checkNonNegative(i2);
        if (i <= map.size() && i2 <= map.size()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
    }

    public static boolean isPredecessor(@CheckForNull Object obj) {
        if (obj != PRED && !(obj instanceof PredAndSucc)) {
            return false;
        }
        return true;
    }

    public static boolean isSuccessor(@CheckForNull Object obj) {
        if (obj != PRED && obj != null) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ EndpointPair lambda$incidentEdgeIterator$0(Object obj, Object obj2) {
        return EndpointPair.ordered(obj2, obj);
    }

    public static /* synthetic */ EndpointPair lambda$incidentEdgeIterator$2(Object obj, NodeConnection nodeConnection) {
        if (nodeConnection instanceof NodeConnection.Succ) {
            return EndpointPair.ordered(obj, nodeConnection.node);
        }
        return EndpointPair.ordered(nodeConnection.node, obj);
    }

    public static <N, V> DirectedGraphConnections<N, V> of(ElementOrder<N> elementOrder) {
        ArrayList arrayList;
        int i = AnonymousClass5.$SwitchMap$com$google$common$graph$ElementOrder$Type[elementOrder.type().ordinal()];
        if (i != 1) {
            if (i == 2) {
                arrayList = new ArrayList();
            } else {
                throw new AssertionError(elementOrder.type());
            }
        } else {
            arrayList = null;
        }
        return new DirectedGraphConnections<>(new HashMap(4, 1.0f), arrayList, 0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <N, V> DirectedGraphConnections<N, V> ofImmutable(N n, Iterable<EndpointPair<N>> iterable, Function<N, V> function) {
        boolean z;
        Preconditions.checkNotNull(n);
        Preconditions.checkNotNull(function);
        HashMap hashMap = new HashMap();
        ImmutableList.Builder builder = ImmutableList.builder();
        int i = 0;
        int i2 = 0;
        for (EndpointPair<N> endpointPair : iterable) {
            if (endpointPair.nodeU().equals(n) && endpointPair.nodeV().equals(n)) {
                hashMap.put(n, new PredAndSucc(function.apply(n)));
                builder.add((ImmutableList.Builder) new NodeConnection.Pred(n));
                builder.add((ImmutableList.Builder) new NodeConnection.Succ(n));
                i++;
            } else if (endpointPair.nodeV().equals(n)) {
                N nodeU = endpointPair.nodeU();
                Object put = hashMap.put(nodeU, PRED);
                if (put != null) {
                    hashMap.put(nodeU, new PredAndSucc(put));
                }
                builder.add((ImmutableList.Builder) new NodeConnection.Pred(nodeU));
                i++;
            } else {
                Preconditions.checkArgument(endpointPair.nodeU().equals(n));
                N nodeV = endpointPair.nodeV();
                V apply = function.apply(nodeV);
                Object put2 = hashMap.put(nodeV, apply);
                if (put2 != null) {
                    if (put2 == PRED) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.checkArgument(z);
                    hashMap.put(nodeV, new PredAndSucc(apply));
                }
                builder.add((ImmutableList.Builder) new NodeConnection.Succ(nodeV));
            }
            i2++;
        }
        return new DirectedGraphConnections<>(hashMap, builder.build(), i, i2);
    }

    @Override // com.google.common.graph.GraphConnections
    public void addPredecessor(N n, V v) {
        Map<N, Object> map = this.adjacentNodeValues;
        Object obj = PRED;
        Object put = map.put(n, obj);
        if (put != null) {
            if (put instanceof PredAndSucc) {
                this.adjacentNodeValues.put(n, put);
                return;
            } else if (put != obj) {
                this.adjacentNodeValues.put(n, new PredAndSucc(put));
            } else {
                return;
            }
        }
        int i = this.predecessorCount + 1;
        this.predecessorCount = i;
        Graphs.checkPositive(i);
        List<NodeConnection<N>> list = this.orderedNodeConnections;
        if (list != null) {
            list.add(new NodeConnection.Pred(n));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0049  */
    @Override // com.google.common.graph.GraphConnections
    @CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public V addSuccessor(N n, V v) {
        Object put = this.adjacentNodeValues.put(n, v);
        if (put != null) {
            if (put instanceof PredAndSucc) {
                this.adjacentNodeValues.put(n, new PredAndSucc(v));
                put = ((PredAndSucc) put).successorValue;
            } else if (put == PRED) {
                this.adjacentNodeValues.put(n, new PredAndSucc(v));
            }
            if (put == null) {
                int i = this.successorCount + 1;
                this.successorCount = i;
                Graphs.checkPositive(i);
                List<NodeConnection<N>> list = this.orderedNodeConnections;
                if (list != null) {
                    list.add(new NodeConnection.Succ(n));
                }
            }
            if (put != null) {
                return null;
            }
            return (V) put;
        }
        put = null;
        if (put == null) {
        }
        if (put != null) {
        }
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> adjacentNodes() {
        if (this.orderedNodeConnections == null) {
            return DesugarCollections.unmodifiableSet(this.adjacentNodeValues.keySet());
        }
        return new AbstractSet<N>() { // from class: com.google.common.graph.DirectedGraphConnections.1

            /* renamed from: com.google.common.graph.DirectedGraphConnections$1$1 */
            /* loaded from: classes2.dex */
            public class C02611 extends AbstractIterator<N> {
                final /* synthetic */ Iterator val$nodeConnections;
                final /* synthetic */ Set val$seenNodes;

                public C02611(AnonymousClass1 this, Iterator it, Set set) {
                    r2 = it;
                    r3 = set;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public N computeNext() {
                    while (r2.hasNext()) {
                        NodeConnection nodeConnection = (NodeConnection) r2.next();
                        if (r3.add(nodeConnection.node)) {
                            return nodeConnection.node;
                        }
                    }
                    return endOfData();
                }
            }

            public AnonymousClass1() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return DirectedGraphConnections.this.adjacentNodeValues.containsKey(obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return DirectedGraphConnections.this.adjacentNodeValues.size();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<N> iterator() {
                return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.1.1
                    final /* synthetic */ Iterator val$nodeConnections;
                    final /* synthetic */ Set val$seenNodes;

                    public C02611(AnonymousClass1 this, Iterator it, Set set) {
                        r2 = it;
                        r3 = set;
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    public N computeNext() {
                        while (r2.hasNext()) {
                            NodeConnection nodeConnection = (NodeConnection) r2.next();
                            if (r3.add(nodeConnection.node)) {
                                return nodeConnection.node;
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    @Override // com.google.common.graph.GraphConnections
    public Iterator<EndpointPair<N>> incidentEdgeIterator(N n) {
        Iterator transform;
        Preconditions.checkNotNull(n);
        List<NodeConnection<N>> list = this.orderedNodeConnections;
        if (list == null) {
            transform = Iterators.concat(Iterators.transform(predecessors().iterator(), new C0267x1378447b(n, 0)), Iterators.transform(successors().iterator(), new C0267x1378447b(n, 1)));
        } else {
            transform = Iterators.transform(list.iterator(), new C0267x1378447b(n, 2));
        }
        return new AbstractIterator<EndpointPair<N>>(this) { // from class: com.google.common.graph.DirectedGraphConnections.4
            final /* synthetic */ AtomicBoolean val$alreadySeenSelfLoop;
            final /* synthetic */ Iterator val$resultWithDoubleSelfLoop;

            public AnonymousClass4(DirectedGraphConnections this, Iterator transform2, AtomicBoolean atomicBoolean) {
                r2 = transform2;
                r3 = atomicBoolean;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public EndpointPair<N> computeNext() {
                while (r2.hasNext()) {
                    EndpointPair<N> endpointPair = (EndpointPair) r2.next();
                    if (!endpointPair.nodeU().equals(endpointPair.nodeV()) || !r3.getAndSet(true)) {
                        return endpointPair;
                    }
                }
                return endOfData();
            }
        };
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> predecessors() {
        return new AbstractSet<N>() { // from class: com.google.common.graph.DirectedGraphConnections.2

            /* renamed from: com.google.common.graph.DirectedGraphConnections$2$1 */
            /* loaded from: classes2.dex */
            public class AnonymousClass1 extends AbstractIterator<N> {
                final /* synthetic */ Iterator val$entries;

                public AnonymousClass1(AnonymousClass2 this, Iterator it) {
                    r2 = it;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public N computeNext() {
                    while (r2.hasNext()) {
                        Map.Entry entry = (Map.Entry) r2.next();
                        if (DirectedGraphConnections.isPredecessor(entry.getValue())) {
                            return (N) entry.getKey();
                        }
                    }
                    return endOfData();
                }
            }

            /* renamed from: com.google.common.graph.DirectedGraphConnections$2$2 */
            /* loaded from: classes2.dex */
            public class C02622 extends AbstractIterator<N> {
                final /* synthetic */ Iterator val$nodeConnections;

                public C02622(AnonymousClass2 this, Iterator it) {
                    r2 = it;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public N computeNext() {
                    while (r2.hasNext()) {
                        NodeConnection nodeConnection = (NodeConnection) r2.next();
                        if (nodeConnection instanceof NodeConnection.Pred) {
                            return nodeConnection.node;
                        }
                    }
                    return endOfData();
                }
            }

            public AnonymousClass2() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return DirectedGraphConnections.isPredecessor(DirectedGraphConnections.this.adjacentNodeValues.get(obj));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return DirectedGraphConnections.this.predecessorCount;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<N> iterator() {
                if (DirectedGraphConnections.this.orderedNodeConnections == null) {
                    return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.2.1
                        final /* synthetic */ Iterator val$entries;

                        public AnonymousClass1(AnonymousClass2 this, Iterator it) {
                            r2 = it;
                        }

                        @Override // com.google.common.collect.AbstractIterator
                        @CheckForNull
                        public N computeNext() {
                            while (r2.hasNext()) {
                                Map.Entry entry = (Map.Entry) r2.next();
                                if (DirectedGraphConnections.isPredecessor(entry.getValue())) {
                                    return (N) entry.getKey();
                                }
                            }
                            return endOfData();
                        }
                    };
                }
                return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.2.2
                    final /* synthetic */ Iterator val$nodeConnections;

                    public C02622(AnonymousClass2 this, Iterator it) {
                        r2 = it;
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    public N computeNext() {
                        while (r2.hasNext()) {
                            NodeConnection nodeConnection = (NodeConnection) r2.next();
                            if (nodeConnection instanceof NodeConnection.Pred) {
                                return nodeConnection.node;
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    @Override // com.google.common.graph.GraphConnections
    public void removePredecessor(N n) {
        Preconditions.checkNotNull(n);
        Object obj = this.adjacentNodeValues.get(n);
        if (obj == PRED) {
            this.adjacentNodeValues.remove(n);
        } else if (obj instanceof PredAndSucc) {
            this.adjacentNodeValues.put(n, ((PredAndSucc) obj).successorValue);
        } else {
            return;
        }
        int i = this.predecessorCount - 1;
        this.predecessorCount = i;
        Graphs.checkNonNegative(i);
        List<NodeConnection<N>> list = this.orderedNodeConnections;
        if (list != null) {
            list.remove(new NodeConnection.Pred(n));
        }
    }

    @Override // com.google.common.graph.GraphConnections
    @CheckForNull
    public V removeSuccessor(Object obj) {
        Object obj2;
        Preconditions.checkNotNull(obj);
        Object obj3 = this.adjacentNodeValues.get(obj);
        if (obj3 != null && obj3 != (obj2 = PRED)) {
            if (obj3 instanceof PredAndSucc) {
                this.adjacentNodeValues.put(obj, obj2);
                obj3 = ((PredAndSucc) obj3).successorValue;
            } else {
                this.adjacentNodeValues.remove(obj);
            }
        } else {
            obj3 = null;
        }
        if (obj3 != null) {
            int i = this.successorCount - 1;
            this.successorCount = i;
            Graphs.checkNonNegative(i);
            List<NodeConnection<N>> list = this.orderedNodeConnections;
            if (list != null) {
                list.remove(new NodeConnection.Succ(obj));
            }
        }
        if (obj3 == null) {
            return null;
        }
        return (V) obj3;
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> successors() {
        return new AbstractSet<N>() { // from class: com.google.common.graph.DirectedGraphConnections.3

            /* renamed from: com.google.common.graph.DirectedGraphConnections$3$1 */
            /* loaded from: classes2.dex */
            public class AnonymousClass1 extends AbstractIterator<N> {
                final /* synthetic */ Iterator val$entries;

                public AnonymousClass1(AnonymousClass3 this, Iterator it) {
                    r2 = it;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public N computeNext() {
                    while (r2.hasNext()) {
                        Map.Entry entry = (Map.Entry) r2.next();
                        if (DirectedGraphConnections.isSuccessor(entry.getValue())) {
                            return (N) entry.getKey();
                        }
                    }
                    return endOfData();
                }
            }

            /* renamed from: com.google.common.graph.DirectedGraphConnections$3$2 */
            /* loaded from: classes2.dex */
            public class AnonymousClass2 extends AbstractIterator<N> {
                final /* synthetic */ Iterator val$nodeConnections;

                public AnonymousClass2(AnonymousClass3 this, Iterator it) {
                    r2 = it;
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public N computeNext() {
                    while (r2.hasNext()) {
                        NodeConnection nodeConnection = (NodeConnection) r2.next();
                        if (nodeConnection instanceof NodeConnection.Succ) {
                            return nodeConnection.node;
                        }
                    }
                    return endOfData();
                }
            }

            public AnonymousClass3() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@CheckForNull Object obj) {
                return DirectedGraphConnections.isSuccessor(DirectedGraphConnections.this.adjacentNodeValues.get(obj));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return DirectedGraphConnections.this.successorCount;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator<N> iterator() {
                if (DirectedGraphConnections.this.orderedNodeConnections == null) {
                    return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.3.1
                        final /* synthetic */ Iterator val$entries;

                        public AnonymousClass1(AnonymousClass3 this, Iterator it) {
                            r2 = it;
                        }

                        @Override // com.google.common.collect.AbstractIterator
                        @CheckForNull
                        public N computeNext() {
                            while (r2.hasNext()) {
                                Map.Entry entry = (Map.Entry) r2.next();
                                if (DirectedGraphConnections.isSuccessor(entry.getValue())) {
                                    return (N) entry.getKey();
                                }
                            }
                            return endOfData();
                        }
                    };
                }
                return new AbstractIterator<N>(this) { // from class: com.google.common.graph.DirectedGraphConnections.3.2
                    final /* synthetic */ Iterator val$nodeConnections;

                    public AnonymousClass2(AnonymousClass3 this, Iterator it) {
                        r2 = it;
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    public N computeNext() {
                        while (r2.hasNext()) {
                            NodeConnection nodeConnection = (NodeConnection) r2.next();
                            if (nodeConnection instanceof NodeConnection.Succ) {
                                return nodeConnection.node;
                            }
                        }
                        return endOfData();
                    }
                };
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.GraphConnections
    @CheckForNull
    public V value(N n) {
        Preconditions.checkNotNull(n);
        V v = (V) this.adjacentNodeValues.get(n);
        if (v == PRED) {
            return null;
        }
        if (v instanceof PredAndSucc) {
            return (V) ((PredAndSucc) v).successorValue;
        }
        return v;
    }
}

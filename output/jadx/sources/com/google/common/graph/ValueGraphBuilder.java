package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.ImmutableValueGraph;
import com.panda912.muddy.ObfuscatedString;

@Beta
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class ValueGraphBuilder<N, V> extends AbstractGraphBuilder<N> {
    private ValueGraphBuilder(boolean z) {
        super(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N1 extends N, V1 extends V> ValueGraphBuilder<N1, V1> cast() {
        return this;
    }

    public static ValueGraphBuilder<Object, Object> directed() {
        return new ValueGraphBuilder<>(true);
    }

    public static <N, V> ValueGraphBuilder<N, V> from(ValueGraph<N, V> valueGraph) {
        return new ValueGraphBuilder(valueGraph.isDirected()).allowsSelfLoops(valueGraph.allowsSelfLoops()).nodeOrder(valueGraph.nodeOrder()).incidentEdgeOrder(valueGraph.incidentEdgeOrder());
    }

    public static ValueGraphBuilder<Object, Object> undirected() {
        return new ValueGraphBuilder<>(false);
    }

    public ValueGraphBuilder<N, V> allowsSelfLoops(boolean z) {
        this.allowsSelfLoops = z;
        return this;
    }

    public <N1 extends N, V1 extends V> MutableValueGraph<N1, V1> build() {
        return new StandardMutableValueGraph(this);
    }

    public ValueGraphBuilder<N, V> copy() {
        ValueGraphBuilder<N, V> valueGraphBuilder = new ValueGraphBuilder<>(this.directed);
        valueGraphBuilder.allowsSelfLoops = this.allowsSelfLoops;
        valueGraphBuilder.nodeOrder = this.nodeOrder;
        valueGraphBuilder.expectedNodeCount = this.expectedNodeCount;
        valueGraphBuilder.incidentEdgeOrder = this.incidentEdgeOrder;
        return valueGraphBuilder;
    }

    public ValueGraphBuilder<N, V> expectedNodeCount(int i) {
        this.expectedNodeCount = Optional.of(Integer.valueOf(Graphs.checkNonNegative(i)));
        return this;
    }

    public <N1 extends N, V1 extends V> ImmutableValueGraph.Builder<N1, V1> immutable() {
        return new ImmutableValueGraph.Builder<>(cast());
    }

    public <N1 extends N> ValueGraphBuilder<N1, V> incidentEdgeOrder(ElementOrder<N1> elementOrder) {
        boolean z;
        if (elementOrder.type() != ElementOrder.Type.UNORDERED && elementOrder.type() != ElementOrder.Type.STABLE) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{5774095370487790032L, 7152913204915127910L, -116995182549835494L, 8566965920964571374L, 2508372735193199509L, -823209334046641851L, 4425873071624087249L, -5519207596339426454L, -1737245062638671751L, -2384500731295563902L, -833460969381553869L, -770781016992988532L, -5817609828448028630L, 5847537860924016564L, -6137906991843178526L, 8702276129309257982L, 502270795945446157L, 7507552510791269067L}).toString(), elementOrder);
        ValueGraphBuilder<N1, V> valueGraphBuilder = (ValueGraphBuilder<N1, V>) cast();
        valueGraphBuilder.incidentEdgeOrder = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return valueGraphBuilder;
    }

    public <N1 extends N> ValueGraphBuilder<N1, V> nodeOrder(ElementOrder<N1> elementOrder) {
        ValueGraphBuilder<N1, V> valueGraphBuilder = (ValueGraphBuilder<N1, V>) cast();
        valueGraphBuilder.nodeOrder = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return valueGraphBuilder;
    }
}

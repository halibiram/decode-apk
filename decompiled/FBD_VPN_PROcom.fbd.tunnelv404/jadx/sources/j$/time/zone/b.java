package j$.time.zone;

import j$.time.A;
import j$.time.Duration;
import j$.time.chrono.AbstractC1338i;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public final class b implements Comparable, Serializable {
    private static final long serialVersionUID = -6946044323557704546L;
    private final long a;
    private final j$.time.j b;
    private final A c;
    private final A d;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.a, ((b) obj).a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(j$.time.j jVar, A a, A a2) {
        jVar.getClass();
        this.a = AbstractC1338i.n(jVar, a);
        this.b = jVar;
        this.c = a;
        this.d = a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long j, A a, A a2) {
        this.a = j;
        this.b = j$.time.j.L(j, 0, a);
        this.c = a;
        this.d = a2;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 2, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeExternal(ObjectOutput objectOutput) {
        a.c(this.a, objectOutput);
        a.d(this.c, objectOutput);
        a.d(this.d, objectOutput);
    }

    public final long B() {
        return this.a;
    }

    public final j$.time.j k() {
        return this.b;
    }

    public final A s() {
        return this.c;
    }

    public final A n() {
        return this.d;
    }

    public final j$.time.j j() {
        return this.b.N(this.d.I() - this.c.I());
    }

    public final Duration m() {
        return Duration.m(this.d.I() - this.c.I());
    }

    public final boolean w() {
        return this.d.I() > this.c.I();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List v() {
        return w() ? Collections.emptyList() : j$.com.android.tools.r8.a.g(new Object[]{this.c, this.d});
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.a == bVar.a && this.c.equals(bVar.c) && this.d.equals(bVar.d);
    }

    public final int hashCode() {
        return (this.b.hashCode() ^ this.c.hashCode()) ^ Integer.rotateLeft(this.d.hashCode(), 16);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Transition[");
        sb.append(w() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.b);
        sb.append(this.c);
        sb.append(" to ");
        sb.append(this.d);
        sb.append(']');
        return sb.toString();
    }
}

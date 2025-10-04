package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1438p1 extends T2 implements G0, InterfaceC1486z0 {
    @Override // j$.util.stream.InterfaceC1486z0, j$.util.stream.A0
    public final G0 a() {
        return this;
    }

    @Override // j$.util.stream.A0
    public final I0 a() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC1471w0.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void accept(int i) {
        AbstractC1471w0.k();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        j((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 h(long j, long j2, IntFunction intFunction) {
        return AbstractC1471w0.v(this, j, j2);
    }

    @Override // j$.util.stream.InterfaceC1419l2
    public final /* synthetic */ void j(Long l) {
        AbstractC1471w0.i(this, l);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void k() {
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ boolean n() {
        return false;
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ Object[] o(IntFunction intFunction) {
        return AbstractC1471w0.m(this, intFunction);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int q() {
        return 0;
    }

    @Override // j$.util.stream.I0
    public final /* bridge */ /* synthetic */ I0 b(int i) {
        b(i);
        throw null;
    }

    @Override // j$.util.stream.H0, j$.util.stream.I0
    public final H0 b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void i(Object[] objArr, int i) {
        AbstractC1471w0.p(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.V2, j$.util.stream.H0
    public final void e(Object obj) {
        super.e((LongConsumer) obj);
    }

    @Override // j$.util.stream.V2, j$.util.stream.H0
    public final void r(int i, Object obj) {
        super.r(i, (long[]) obj);
    }

    @Override // j$.util.stream.T2, j$.util.stream.V2, java.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.T2, j$.util.stream.V2, java.lang.Iterable
    public final j$.util.c0 spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        clear();
        v(j);
    }

    @Override // j$.util.stream.V2, j$.util.stream.H0
    public final Object d() {
        return (long[]) super.d();
    }
}

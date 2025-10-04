package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.Spliterator;

/* renamed from: j$.util.stream.g */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1391g implements java.util.stream.BaseStream {
    public final /* synthetic */ BaseStream a;

    private /* synthetic */ C1391g(BaseStream baseStream) {
        this.a = baseStream;
    }

    public static /* synthetic */ java.util.stream.BaseStream j(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C1386f ? ((C1386f) baseStream).a : baseStream instanceof DoubleStream ? D.j((DoubleStream) baseStream) : baseStream instanceof IntStream ? IntStream.Wrapper.convert((IntStream) baseStream) : baseStream instanceof LongStream ? C1417l0.j((LongStream) baseStream) : baseStream instanceof Stream ? Stream.Wrapper.convert((Stream) baseStream) : new C1391g(baseStream);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BaseStream baseStream = this.a;
        if (obj instanceof C1391g) {
            obj = ((C1391g) obj).a;
        }
        return baseStream.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream onClose(Runnable runnable) {
        return j(this.a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream parallel() {
        return j(this.a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream sequential() {
        return j(this.a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(this.a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream unordered() {
        return j(this.a.unordered());
    }
}

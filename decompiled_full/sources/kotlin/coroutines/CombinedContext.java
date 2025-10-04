package kotlin.coroutines;

import androidx.exifinterface.media.ExifInterface;
import defpackage.C0538x3d8fea2c;
import defpackage.C0609x31b9c38b;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001#B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ*\u0010\u000f\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\f*\u00020\u00052\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J7\u0010\u0015\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00112\u0006\u0010\u0012\u001a\u00028\u00002\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0017\u001a\u00020\u00012\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\rH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lkotlin/coroutines/CombinedContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "left", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V", "", "writeReplace", "()Ljava/lang/Object;", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "minusKey", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "둘뎰땜딽땣딽딸뒝땧됩땁됴땲됴땫땜땩땟뎬뎻뒙땡땜뒘땮딎뎸돵득됨딽땦땐딎땵뒼듸땅땐뒀듰뎻딤땹드둠땻땬돴뎨됩땡됨딹땃딸돷딹됴돷둑뒨땳디뒼뒘뎽땮딻돝뒘딀땋땧따뒷땮뎽땟됩땟딠된둘뒤딤땤뎠뒈딠듌땋땦디둡뎠땹듼디딁뒀딄딁듻뒘딤땠딅돨둣딤땻돰땥돼뒾땯뒨듽뎽뒾둠뎬돴뒋됐땸딄뒾돝", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"})
/* loaded from: classes3.dex */
public final class CombinedContext implements CoroutineContext, Serializable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final CoroutineContext f1347xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final CoroutineContext.Element f1348x3271d0aa;

    public CombinedContext(@NotNull CoroutineContext left, @NotNull CoroutineContext.Element element) {
        Intrinsics.checkNotNullParameter(left, "left");
        Intrinsics.checkNotNullParameter(element, "element");
        this.f1347xfbe0c504 = left;
        this.f1348x3271d0aa = element;
    }

    private final Object writeReplace() {
        int m1966xfbe0c504 = m1966xfbe0c504();
        final CoroutineContext[] coroutineContextArr = new CoroutineContext[m1966xfbe0c504];
        final Ref.IntRef intRef = new Ref.IntRef();
        fold(Unit.INSTANCE, new Function2() { // from class: 둔듸땰땃딞땥땰뒐둬딄땁땲딁두뎽따땝땥딝딄땪뎰뒷득딄땐뒬땧땳딽뎠뎹듽뒉뒼돰딝된도돸득딤딞됨땳듟땳듟딻땯뒝땜돼땤둬돠뎰드돴돵듬뎽돠딄됐듸둠듔딎땰딀땄뒤둥돶뎨돶딻돷딸뒈땱됴땮땬듸뒝돼뒀돝딜듼땄땣디될땅뒝뒉뒵땹땬땝듽땪땬땭둡디딌듼땧뎨딹땹돠땹됫뒉뒉딄됴딞뒉뒤듟딄뎡뎽딄
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                Intrinsics.checkNotNullParameter((Unit) obj, "<unused var>");
                Intrinsics.checkNotNullParameter(element, "element");
                Ref.IntRef intRef2 = intRef;
                int i = intRef2.element;
                intRef2.element = i + 1;
                coroutineContextArr[i] = element;
                return Unit.INSTANCE;
            }
        });
        if (intRef.element == m1966xfbe0c504) {
            return new C0609x31b9c38b(coroutineContextArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    public boolean equals(@Nullable Object other) {
        boolean z;
        if (this != other) {
            if (!(other instanceof CombinedContext)) {
                return false;
            }
            CombinedContext combinedContext = (CombinedContext) other;
            if (combinedContext.m1966xfbe0c504() != m1966xfbe0c504()) {
                return false;
            }
            CombinedContext combinedContext2 = this;
            while (true) {
                CoroutineContext.Element element = combinedContext2.f1348x3271d0aa;
                if (!Intrinsics.areEqual(combinedContext.get(element.getKey()), element)) {
                    z = false;
                    break;
                }
                CoroutineContext coroutineContext = combinedContext2.f1347xfbe0c504;
                if (coroutineContext instanceof CombinedContext) {
                    combinedContext2 = (CombinedContext) coroutineContext;
                } else {
                    Intrinsics.checkNotNull(coroutineContext, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    CoroutineContext.Element element2 = (CoroutineContext.Element) coroutineContext;
                    z = Intrinsics.areEqual(combinedContext.get(element2.getKey()), element2);
                    break;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R initial, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        return operation.invoke((Object) this.f1347xfbe0c504.fold(initial, operation), this.f1348x3271d0aa);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e = (E) combinedContext.f1348x3271d0aa.get(key);
            if (e != null) {
                return e;
            }
            CoroutineContext coroutineContext = combinedContext.f1347xfbe0c504;
            if (coroutineContext instanceof CombinedContext) {
                combinedContext = (CombinedContext) coroutineContext;
            } else {
                return (E) coroutineContext.get(key);
            }
        }
    }

    public int hashCode() {
        return this.f1348x3271d0aa.hashCode() + this.f1347xfbe0c504.hashCode();
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        CoroutineContext.Element element = this.f1348x3271d0aa;
        CoroutineContext.Element element2 = element.get(key);
        CoroutineContext coroutineContext = this.f1347xfbe0c504;
        if (element2 != null) {
            return coroutineContext;
        }
        CoroutineContext minusKey = coroutineContext.minusKey(key);
        if (minusKey == coroutineContext) {
            return this;
        }
        if (minusKey != EmptyCoroutineContext.INSTANCE) {
            return new CombinedContext(minusKey, element);
        }
        return element;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return CoroutineContext.DefaultImpls.plus(this, coroutineContext);
    }

    @NotNull
    public String toString() {
        return "[" + ((String) fold("", new C0538x3d8fea2c(1))) + ']';
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int m1966xfbe0c504() {
        int i = 2;
        CombinedContext combinedContext = this;
        while (true) {
            CoroutineContext coroutineContext = combinedContext.f1347xfbe0c504;
            if (coroutineContext instanceof CombinedContext) {
                combinedContext = (CombinedContext) coroutineContext;
            } else {
                combinedContext = null;
            }
            if (combinedContext == null) {
                return i;
            }
            i++;
        }
    }
}

package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
/* loaded from: classes3.dex */
public class C0349x34271fae implements Iterator, KMappedMarker {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3740xfbe0c504 = 0;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3741x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Object f3742x1378447b;

    public C0349x34271fae(Object[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3742x1378447b = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f3740xfbe0c504) {
            case 0:
                if (this.f3741x3271d0aa < ((AbstractList) this.f3742x1378447b).size()) {
                    return true;
                }
                return false;
            case 1:
                if (this.f3741x3271d0aa < ((Object[]) this.f3742x1378447b).length) {
                    return true;
                }
                return false;
            case 2:
                if (this.f3741x3271d0aa < ((byte[]) this.f3742x1378447b).length) {
                    return true;
                }
                return false;
            case 3:
                if (this.f3741x3271d0aa < ((int[]) this.f3742x1378447b).length) {
                    return true;
                }
                return false;
            case 4:
                if (this.f3741x3271d0aa < ((long[]) this.f3742x1378447b).length) {
                    return true;
                }
                return false;
            default:
                if (this.f3741x3271d0aa < ((short[]) this.f3742x1378447b).length) {
                    return true;
                }
                return false;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f3740xfbe0c504) {
            case 0:
                if (hasNext()) {
                    int i = this.f3741x3271d0aa;
                    this.f3741x3271d0aa = i + 1;
                    return ((AbstractList) this.f3742x1378447b).get(i);
                }
                throw new NoSuchElementException();
            case 1:
                try {
                    Object[] objArr = (Object[]) this.f3742x1378447b;
                    int i2 = this.f3741x3271d0aa;
                    this.f3741x3271d0aa = i2 + 1;
                    return objArr[i2];
                } catch (ArrayIndexOutOfBoundsException e) {
                    this.f3741x3271d0aa--;
                    throw new NoSuchElementException(e.getMessage());
                }
            case 2:
                int i3 = this.f3741x3271d0aa;
                byte[] bArr = (byte[]) this.f3742x1378447b;
                if (i3 < bArr.length) {
                    this.f3741x3271d0aa = i3 + 1;
                    return UByte.m1773boximpl(UByte.m1774constructorimpl(bArr[i3]));
                }
                throw new NoSuchElementException(String.valueOf(this.f3741x3271d0aa));
            case 3:
                int i4 = this.f3741x3271d0aa;
                int[] iArr = (int[]) this.f3742x1378447b;
                if (i4 < iArr.length) {
                    this.f3741x3271d0aa = i4 + 1;
                    return UInt.m1797boximpl(UInt.m1798constructorimpl(iArr[i4]));
                }
                throw new NoSuchElementException(String.valueOf(this.f3741x3271d0aa));
            case 4:
                int i5 = this.f3741x3271d0aa;
                long[] jArr = (long[]) this.f3742x1378447b;
                if (i5 < jArr.length) {
                    this.f3741x3271d0aa = i5 + 1;
                    return ULong.m1821boximpl(ULong.m1822constructorimpl(jArr[i5]));
                }
                throw new NoSuchElementException(String.valueOf(this.f3741x3271d0aa));
            default:
                int i6 = this.f3741x3271d0aa;
                short[] sArr = (short[]) this.f3742x1378447b;
                if (i6 < sArr.length) {
                    this.f3741x3271d0aa = i6 + 1;
                    return UShort.m1845boximpl(UShort.m1846constructorimpl(sArr[i6]));
                }
                throw new NoSuchElementException(String.valueOf(this.f3741x3271d0aa));
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f3740xfbe0c504) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 2:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 3:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 4:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public C0349x34271fae(byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3742x1378447b = array;
    }

    public C0349x34271fae(int[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3742x1378447b = array;
    }

    public C0349x34271fae(long[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3742x1378447b = array;
    }

    public C0349x34271fae(short[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3742x1378447b = array;
    }

    public C0349x34271fae(AbstractList abstractList) {
        this.f3742x1378447b = abstractList;
    }
}

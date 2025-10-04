package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH$¢\u0006\u0004\b\u000b\u0010\u0004J\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\nH\u0004¢\u0006\u0004\b\u000f\u0010\u0004¨\u0006\u0010"}, d2 = {"Lkotlin/collections/AbstractIterator;", ExifInterface.GPS_DIRECTION_TRUE, "", "<init>", "()V", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", "computeNext", "value", "setNext", "(Ljava/lang/Object;)V", "done", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class AbstractIterator<T> implements Iterator<T>, KMappedMarker {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f1203xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public Object f1204x3271d0aa;

    public abstract void computeNext();

    public final void done() {
        this.f1203xfbe0c504 = 2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i = this.f1203xfbe0c504;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return false;
                }
                throw new IllegalArgumentException("hasNext called when the iterator is in the FAILED state.");
            }
        } else {
            this.f1203xfbe0c504 = 3;
            computeNext();
            if (this.f1203xfbe0c504 != 1) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this.f1203xfbe0c504;
        if (i == 1) {
            this.f1203xfbe0c504 = 0;
            return (T) this.f1204x3271d0aa;
        }
        if (i != 2) {
            this.f1203xfbe0c504 = 3;
            computeNext();
            if (this.f1203xfbe0c504 == 1) {
                this.f1203xfbe0c504 = 0;
                return (T) this.f1204x3271d0aa;
            }
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setNext(T value) {
        this.f1204x3271d0aa = value;
        this.f1203xfbe0c504 = 1;
    }
}

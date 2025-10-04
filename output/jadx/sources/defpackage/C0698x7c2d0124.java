package defpackage;

import kotlinx.coroutines.Incomplete;
import kotlinx.coroutines.NodeList;

/* renamed from: 뒙딁둔둥딽땫땰땀땀뒨땰땐땠뒷땻딟뒵돛뒀돰땥땬땱뒘땜딌딄됴땦됨딎딟뒼뒝뒾뒨딅뒤땬듽둡뒋뒻듟뎰땸돨딌뒤땀돛땭뎬뒵듸돶땟뒝뎹땮땦딜땔뎹땥뒛딨둑두뒨뒵뎻땸땝드되돰딟땃듼땣뎸듌된땃돶돵둣돛땍뒈듐땭땻땜듌뒾땣땜뒀땳된뒤뎰딜득땹돤듌땅딤둥둔됐될둣득땱뎻됩땄돠땜땪땳된땣뎻땸땟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0698x7c2d0124 implements Incomplete {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final boolean f4544xfbe0c504;

    public C0698x7c2d0124(boolean z) {
        this.f4544xfbe0c504 = z;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final NodeList getList() {
        return null;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final boolean isActive() {
        return this.f4544xfbe0c504;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Empty{");
        if (this.f4544xfbe0c504) {
            str = "Active";
        } else {
            str = "New";
        }
        sb.append(str);
        sb.append('}');
        return sb.toString();
    }
}

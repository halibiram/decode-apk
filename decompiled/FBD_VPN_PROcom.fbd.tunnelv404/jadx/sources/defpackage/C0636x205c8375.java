package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import de.blinkt.openvpn.core.ConnectionStatus;
import de.blinkt.openvpn.core.LogItem;
import de.blinkt.openvpn.core.TrafficHistory;

/* renamed from: 둥돤땱듔뎡딁돳될뒉땻딞땡됐땔땄둑듸두뎬딃돼땤딤땱돴듽땧땮됐뎬땹드딐뎡돛딽됫돼듰딞듼뒤뒹뎽돵뒵둣땦딌딨땅돨뎻듰됫땯도딝둑뒤땱듼뒨뎨땩둡둡딽땵듐땧들돝뎸땀됐뒛딎땲뎹드땲뒈땱됴뒵듻딻땱땩듸땤땭돠들딄땮둡둥뎹뒀딐돷듟땣땯둔뒹뒷땵둣땯땝땻뒵땋뒋땟딜땝뎹뎰드뎹돤뎸땤둣뒛땦, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0636x205c8375 implements Parcelable.Creator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4417xfbe0c504;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f4417xfbe0c504) {
            case 0:
                return ConnectionStatus.values()[parcel.readInt()];
            case 1:
                return new LogItem(parcel);
            default:
                return new TrafficHistory(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.f4417xfbe0c504) {
            case 0:
                return new ConnectionStatus[i];
            case 1:
                return new LogItem[i];
            default:
                return new TrafficHistory[i];
        }
    }
}

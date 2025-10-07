package defpackage;

import java.util.NoSuchElementException;
import kotlin.collections.ByteIterator;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뎽땜될뒵딹두땦뎬뒬둘땀딽땹땹듰뒨딟뒵듟땲땬두듐돸땪뎨땃딟듻뒐땝뒛땱든딠땱딞듸딐땄땮땳딄뎹드딹딁딐딌둠땅디되돳딁땦듰땤뒷땹든뒬딽뒀땣됨돶두뒋땪땨땡든뒋돳땀되돤땐듸땬딻듻됴딸뒘돷땠땰돷돷돝땱딽듸뒘둡뒬땋땸땨될돼딨돝땔돛듬돸땭들듬뒉뒉뒼뎰듻뒐디땝뒵둣땻됫땦땰딜된돼땟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0406xafe1609b extends ByteIterator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final byte[] f3841xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3842x3271d0aa;

    public C0406xafe1609b(byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3841xfbe0c504 = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3842x3271d0aa < this.f3841xfbe0c504.length) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.ByteIterator
    public final byte nextByte() {
        try {
            byte[] bArr = this.f3841xfbe0c504;
            int i = this.f3842x3271d0aa;
            this.f3842x3271d0aa = i + 1;
            return bArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f3842x3271d0aa--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}

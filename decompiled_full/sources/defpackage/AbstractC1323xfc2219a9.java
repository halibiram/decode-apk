package defpackage;

import sun.misc.Unsafe;

/* renamed from: 땸딀땪땥둑뒉듌딃딤딞뒤돰땤뒀딠도땀돴듻둬딨뒝두뒘뎰뒝딅땡땬뒛뒻땍뒾뒨돤딞땸땦뒤딽뎹뎬뒹둠딅듬딄듽됴됐땵뒨된둘뎸땱딜땻듼든땹돶뒘땲뒨듐뒘딹돼땡딅땳뒾땁땝돠됴둡땧돼뎬뒨돤땱땣듻뎰땹딻디땻딹돸땃땭땯드뒾뒨뒼둔뎬되땳둥딠딃돳돠뒛따땻땠딃돝됨딻돳땋땪됩둥뒬딽뎰둬딻뒛듼뒤, reason: contains not printable characters */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1323xfc2219a9 {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static /* synthetic */ boolean m4384xfbe0c504(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}

package defpackage;

import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkGenerationalId;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 땨땯디뒼뎰땅뒻뎸될땳땯둑듰돨돴되땠듟둣든듨돰딄딨돤뒬둬딐뒀땹돠뎠딨딨뒘딄딄딄둠딸땮딹뒼딀딐뎡듟디땤돸돨뎰땜딤땭될돼뒘뎸땫된든둠딅딝딄뎹땋땤돰땭둬땳땧딁뒼딃뒉둠둥딜뎹딸뎠뎽뒨딌땲둬땱딄듻딃뒻땍뒋돶땝딁뒾딜땸뒈딜듔땀둑듸둠뎡뒛될딐뒤뒼뒻뒙뒛땲돝들뒻뒬될딄땱듽될뎬돤, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1220xce36e9ad {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static SystemIdInfo m3961xfbe0c504(SystemIdInfoDao systemIdInfoDao, WorkGenerationalId id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return systemIdInfoDao.getSystemIdInfo(id.getWorkSpecId(), id.getGeneration());
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static void m3962x3271d0aa(SystemIdInfoDao systemIdInfoDao, WorkGenerationalId id) {
        Intrinsics.checkNotNullParameter(id, "id");
        systemIdInfoDao.removeSystemIdInfo(id.getWorkSpecId(), id.getGeneration());
    }
}

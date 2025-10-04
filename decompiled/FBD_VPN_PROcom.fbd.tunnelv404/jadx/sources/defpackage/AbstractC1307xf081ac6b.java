package defpackage;

import androidx.work.impl.model.WorkTag;
import androidx.work.impl.model.WorkTagDao;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 땳딠땱뒋딟딄땁딁땃둬뎰땋뒬땃땹땍딻땻듻땯딞뒛됩됴디됴땻뒈딻뎸땹뎬되돝될뒉됴따땟듟땹땜뒵돵됴땮뒻뒷들땟돶듐땮뒉되돼딐땦돝뒨땹듐돠뒾돰땩듻땅땃땯땵뒝딀된딜땔드땣딸땠뎡땡듰땦둔듸뒉딁돴될땲뒉딐뒉땬땠돶딀뒙땜뎠돵땁든땰땫땩듸땲땬딄둣땻땯듌딌듟땠땧뒵뒈땝뒛두뒉땰땥뒉땩뎻, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1307xf081ac6b {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m4334xfbe0c504(WorkTagDao workTagDao, String id, Set tags) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Iterator it = tags.iterator();
        while (it.hasNext()) {
            workTagDao.insert(new WorkTag((String) it.next(), id));
        }
    }
}

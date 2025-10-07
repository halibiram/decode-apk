package androidx.camera.core.impl;

import androidx.camera.core.CameraFilter;
import androidx.camera.core.impl.CameraFilters;
import androidx.camera.core.impl.Identifier;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class CameraFilters {
    public static final CameraFilter ANY;
    public static final CameraFilter NONE;

    static {
        final int i = 0;
        ANY = new CameraFilter() { // from class: 돵땰뎡땥딃딄뒼뒷뒘드된된돵뒹뒾땔둔딞뒈땣땄땩딄딽딌딸듰딹땪땯뒾된뒵딌딞딽듟땡땀뒨땮듻뒬땄따뎡듨되뒵땮될뎠땩딄둬뒐뒘딨될땦땠듸뒤딃둣뒉땔딐돰뒘돛디땱딞뎸뒼땠뎸듟뒾듨딨땻됩뒼돝돵딽뎹땬땝땋땧둣땡땻된듌땐뎰땨뎻둡둡듻뎹둥뒻둬돰뒀땸뒛돰땬땱됴딃땱돝땟땫땨땬땻됐듼땣뒬땥
            @Override // androidx.camera.core.CameraFilter
            public final List filter(List list) {
                List lambda$static$0;
                switch (i) {
                    case 0:
                        lambda$static$0 = CameraFilters.lambda$static$0(list);
                        return lambda$static$0;
                    default:
                        return CameraFilters.lambda$static$1(list);
                }
            }

            @Override // androidx.camera.core.CameraFilter
            public final /* synthetic */ Identifier getIdentifier() {
                switch (i) {
                    case 0:
                        return AbstractC0502xa21a55d.m3129xfbe0c504(this);
                    default:
                        return AbstractC0502xa21a55d.m3129xfbe0c504(this);
                }
            }
        };
        final int i2 = 1;
        NONE = new CameraFilter() { // from class: 돵땰뎡땥딃딄뒼뒷뒘드된된돵뒹뒾땔둔딞뒈땣땄땩딄딽딌딸듰딹땪땯뒾된뒵딌딞딽듟땡땀뒨땮듻뒬땄따뎡듨되뒵땮될뎠땩딄둬뒐뒘딨될땦땠듸뒤딃둣뒉땔딐돰뒘돛디땱딞뎸뒼땠뎸듟뒾듨딨땻됩뒼돝돵딽뎹땬땝땋땧둣땡땻된듌땐뎰땨뎻둡둡듻뎹둥뒻둬돰뒀땸뒛돰땬땱됴딃땱돝땟땫땨땬땻됐듼땣뒬땥
            @Override // androidx.camera.core.CameraFilter
            public final List filter(List list) {
                List lambda$static$0;
                switch (i2) {
                    case 0:
                        lambda$static$0 = CameraFilters.lambda$static$0(list);
                        return lambda$static$0;
                    default:
                        return CameraFilters.lambda$static$1(list);
                }
            }

            @Override // androidx.camera.core.CameraFilter
            public final /* synthetic */ Identifier getIdentifier() {
                switch (i2) {
                    case 0:
                        return AbstractC0502xa21a55d.m3129xfbe0c504(this);
                    default:
                        return AbstractC0502xa21a55d.m3129xfbe0c504(this);
                }
            }
        };
    }

    private CameraFilters() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$static$0(List list) {
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$static$1(List list) {
        return Collections.emptyList();
    }
}

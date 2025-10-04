package okhttp3;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: okhttp3.뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0334x75d576dc implements CookieJar {
    @Override // okhttp3.CookieJar
    public final List loadForRequest(HttpUrl url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // okhttp3.CookieJar
    public final void saveFromResponse(HttpUrl url, List cookies) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(cookies, "cookies");
    }
}

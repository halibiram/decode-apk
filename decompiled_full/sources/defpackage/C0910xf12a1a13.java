package defpackage;

import com.google.gson.JsonElement;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.v2ray.ang.util.JsonUtil;
import java.lang.reflect.Type;

/* renamed from: 딃뒛딐딃듟땥뒉듌둔땦뒻딌돛뒵듟땋딤뒨딐땲될듰뒋들뒾딜땀땭뒈드뎻땄됨딞된뎰듸땲둣듽둔돨딌뒤둘뒼듼뎹듐땨땝땩돵돠됩딞뒹딎뎬딤딽땳땪뒈땅땍드돴뒋딤듌둑됩듔둬됫땪땠땥돨땄될듻딠땅둬땣땬땨돠돷도돠돰뒉듔든땪돸뒾뒛듼땹뒷득땰땁뒙듽디됨땫땥돛땸땱둑땰돨돵딸딨디땤든땵땋뒷돛돨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0910xf12a1a13 implements JsonSerializer {
    @Override // com.google.gson.JsonSerializer
    public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonElement jsonPretty$lambda$0;
        jsonPretty$lambda$0 = JsonUtil.toJsonPretty$lambda$0((Double) obj, type, jsonSerializationContext);
        return jsonPretty$lambda$0;
    }
}
